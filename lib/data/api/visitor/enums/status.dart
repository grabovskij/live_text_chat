/// Статус обращения. Возможные значения:
///
/// "unassigned" | "inQueue" | "assigned" | "aiBot"
///
/// где
///
/// [unassigned] — обращение не назначено ни в одну из очередей;
/// [inQueue] — обращение назначено в очередь;
/// [assigned] — обращение назначено на конкретного оператора;
/// [aiBot] — обращение назначено боту.

enum AppealStatus {
  unassigned,
  inQueue,
  assigned,
  aiBot,
}
