module AdminsBackofficeHelper
  def translate_attribute(object = nil, method = nil) #definiu que os parâmetros sejam vazio
    if object && method #se passar algum dado, ok!
      object.model.human_attribute_name(method)
    else
      "Informe os parâmetros novamente!" #caso não passe dado nenhum, vai me dar esta resposta
    end
  end
end
