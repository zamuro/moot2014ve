json.array!(@pagos) do |pago|
  json.extract! pago, :usuario_id, :voucher, :monto
  json.url pago_url(pago, format: :json)
end
