Overview
===
Библиотека кеширующего resolving-а - изначально писалась для имплементации neh http протокола, использующей корутины.
Для предотвращения пробоя короткого стека корутин есть метод, предусматривающий вынос в отдельный тред собственно вызов функции резолвинга.
Для предотвращения обращения к DNS серверам (использования вместо этого заранее заданных ip-адресов),
предусмотрена ручка добавления alias-ов hosname -> ip-address (требование от метапоискового движка).

Из-за того, что библиотка разрабатывалась под задачу максимально быстрого резолвинга добавлены слои кеширования результатов
resoving-а, - возможности сбросить кеш для того, чтобы получить более свежие адреса для указанного host-а _нет_.