# openapi.model.EventRetrieve

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pk** | **int** |  | [optional] [readonly] [default to null]
**title** | **String** |  | [optional] [readonly] [default to null]
**description** | **String** |  | [optional] [readonly] [default to null]
**start** | [**DateTime**](DateTime.md) |  | [default to null]
**end** | [**DateTime**](DateTime.md) |  | [default to null]
**organiser** | **int** |  | [default to null]
**category** | **String** | Alumni: Events organised for alumni, Education: Education focused events, Career: Career focused events, Leisure: borrels, parties, game activities etc., Association Affairs: general meetings or any other board related events, Other: anything else. | [default to null]
**registrationStart** | [**DateTime**](DateTime.md) | If you set a registration period registration will be required. If you don&#39;t set one, registration won&#39;t be required. Prefer times when people don&#39;t have lectures, e.g. 12:30 instead of 13:37. | [optional] [default to null]
**registrationEnd** | [**DateTime**](DateTime.md) | If you set a registration period registration will be required. If you don&#39;t set one, registration won&#39;t be required. | [optional] [default to null]
**cancelDeadline** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**location** | **String** |  | [optional] [readonly] [default to null]
**mapLocation** | **String** | Location of Huygens: Heyendaalseweg 135, Nijmegen. Location of Mercator 1: Toernooiveld 212, Nijmegen. Not shown as text!! | [default to null]
**price** | **String** |  | [optional] [default to null]
**fine** | **String** | Fine if participant does not show up (at least €5). | [optional] [default to null]
**maxParticipants** | **int** |  | [optional] [default to null]
**numParticipants** | **String** |  | [optional] [readonly] [default to null]
**userRegistration** | **String** |  | [optional] [readonly] [default to null]
**registrationAllowed** | **String** |  | [optional] [readonly] [default to null]
**noRegistrationMessage** | **String** |  | [optional] [readonly] [default to null]
**hasFields** | **String** |  | [optional] [readonly] [default to null]
**isPizzaEvent** | **String** |  | [optional] [readonly] [default to null]
**googleMapsUrl** | **String** |  | [optional] [readonly] [default to null]
**isAdmin** | **String** |  | [optional] [readonly] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


