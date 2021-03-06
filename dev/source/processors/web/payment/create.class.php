<?php
require_once dirname(dirname(dirname(__FILE__))) . "/mgr/payment/provider/yandex-money/yandexmoney.class.php";

class modWebPaymentsCreateProcessor extends modYandexMoneyProviderProcessor
{

    public function initialize()
    {

        if (!$this->getProperty('amount')) $this->addFieldError('amount', 'Amount can`t be empty.');

        return parent::initialize(); // TODO: Change the autogenerated stub
    }

    /**
     * @return array|mixed|string
     * @throws \YandexCheckout\Common\Exceptions\ApiException
     * @throws \YandexCheckout\Common\Exceptions\BadApiRequestException
     * @throws \YandexCheckout\Common\Exceptions\ForbiddenException
     * @throws \YandexCheckout\Common\Exceptions\InternalServerError
     * @throws \YandexCheckout\Common\Exceptions\NotFoundException
     * @throws \YandexCheckout\Common\Exceptions\ResponseProcessingException
     * @throws \YandexCheckout\Common\Exceptions\TooManyRequestsException
     * @throws \YandexCheckout\Common\Exceptions\UnauthorizedException
     */
    public function process()
    {
        $properties = $this->preparePaymentProperties();

        $payment = $this->client->createPayment($properties, uniqid('', true));

        return $this->success('The payment was successfully created.', $payment->jsonSerialize());
    }

    public function preparePaymentProperties()
    {
        $amount = array(
            'value' => $this->getProperty('amount'),
            'currency'  => 'RUB',
        );

        $metadata = array(
            'client'    => $this->getProperty('username'),
            'email'     => $this->getProperty('email'),
            'phone'     => $this->getProperty('phone'),
            'order'     => $this->getProperty('order')
        );

        $confirmation = array(
            'type'  => 'redirect',
            'return_url'    => $this->modx->getOption('yandexmoney.return_url', '', $this->modx->makeUrl($this->modx->getOption('site_start'))),
        );

        $properties = array(
            'metadata'  => $metadata,
            'amount'    => $amount,
            'confirmation'  => $confirmation,
            'description'   => "Оплата заказа №" . $metadata['order'],
        );

        return $properties;
    }

}
return 'modWebPaymentsCreateProcessor';