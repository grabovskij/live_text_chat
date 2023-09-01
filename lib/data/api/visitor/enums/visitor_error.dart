enum VisitorError {
  // Каталог ошибок выполнения команд клиента
  systemUnavailable('Сервис приёма сообщений недоступен'),
  fileNoName('В команде file нет или пустое поле name'),
  fileNoUrl('В команде file нет или пустое поле url'),
  textContentIsEmpty('В команде text нет или пустое поле content;'),
  attributesWrongFormat(
      'В команде attributes атрибуты переданы не в виде Map<string, string>'),
  departmentNoId('В команде department пустое поле id'),
  departmentInvalidId(
      'В команде department передан невалидный или несуществующий id группы'),
  historyFromMessageIdNotDefined(
      'В команде getHistory не определен messageId от которого будет возвращена история'),
  buttonPayloadIsEmpty('В команде ButtonPressed не определен payload'),
  ratingValueIsEmpty('В команде Rating не задан параметр value'),

  // Каталог ошибок работы клиента с сервисом
  requestMissingFieldType('В запросе нет обязательного поля type'),
  requestMissingFieldCorrelationId(
      'В запросе нет обязательного поля correlationId'),
  tooManyRequests('Слишком много запросов, рейт-лимит'),

  // Default
  def('Нет заготовленного описания ошибки');

  const VisitorError(this.description);

  final String description;

  static VisitorError fromString(String string) {
    return VisitorError.values.firstWhere(
      (element) => element.name == string,
      orElse: () => VisitorError.def,
    );
  }
}
