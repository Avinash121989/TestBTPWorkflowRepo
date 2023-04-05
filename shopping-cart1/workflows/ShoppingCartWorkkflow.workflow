{
	"contents": {
		"c1d044c5-8ff7-435a-8bf7-e94212158fdc": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "vv.shoppingcartworkkflow",
			"subject": "ShoppingCartWorkkflow",
			"name": "ShoppingCartWorkkflow",
			"documentation": "Shopping Cart Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"00e6935e-d308-470a-90d5-d15bc91f510a": {
					"name": "BoundaryTimerEvent1"
				},
				"a33ca926-a477-4989-b8db-56f5328b8896": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"b86f2519-59e8-4c3d-ba81-3d1541111f66": {
					"name": "ReadProductData"
				},
				"2c81ced0-52cf-426c-8e3d-7d6efd9f8d0d": {
					"name": "CheckProductPRICE"
				},
				"4d95e771-3e75-4827-821f-aaf90310e837": {
					"name": "CheckAutoApprove"
				},
				"2b5588d4-2651-49ed-b779-48b6be571f10": {
					"name": "AutoApprovalMail"
				},
				"74851b51-e67d-4aa2-8648-670e1bd7ff7b": {
					"name": "REquest for Approval"
				},
				"0540fd87-8c49-4a44-9dd3-f89974bbd7ca": {
					"name": "CheckApproveReject"
				},
				"71e6fbff-727a-45d7-80ec-046be53e9cfa": {
					"name": "CheckStatusofCart"
				},
				"c39aa579-01ec-43cd-875d-183b545ff4e5": {
					"name": "Approval Mail"
				},
				"8ff07462-45ef-4f0c-9ed4-68da2d0112ce": {
					"name": "Reject Mail"
				},
				"b2f4f817-9f3a-4136-8d23-498e83295af2": {
					"name": "Cancellation Email"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"7cb177eb-a02d-4b7f-b2ed-919a4f7bb7fb": {
					"name": "SequenceFlow2"
				},
				"11791763-14b5-483e-8551-5da3b1847d32": {
					"name": "SequenceFlow3"
				},
				"3a314016-3e04-4411-97ee-6fb3a70f29c2": {
					"name": "SequenceFlow4"
				},
				"7828b829-b20b-4138-ba44-2e0a15d8e255": {
					"name": "SequenceFlow5"
				},
				"a60cb3a9-bd6d-4583-ba8c-5502b75cb360": {
					"name": "SequenceFlow6"
				},
				"c992cd78-8cc6-4667-a93e-4cb8ef5ff549": {
					"name": "SequenceFlow7"
				},
				"9879522e-bbc7-40e0-9570-52757a60bef3": {
					"name": "SequenceFlow9"
				},
				"7d96a968-2c22-45e9-b4ef-782b542a07ed": {
					"name": "SequenceFlow10"
				},
				"7071be1f-2a0d-4f87-a33c-2d9fb7844022": {
					"name": "SequenceFlow11"
				},
				"d93f09a4-2ebf-44e1-a981-8a0a8d4e037c": {
					"name": "SequenceFlow12"
				},
				"c83a8f34-412e-4026-adda-25fb143b7e3b": {
					"name": "SequenceFlow13"
				},
				"2277bb39-73fb-465c-a46e-c9444ed68b66": {
					"name": "SequenceFlow14"
				},
				"e0bc7ac6-068c-4a88-ad1c-adbe4fad9211": {
					"name": "SequenceFlow15"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"15d9682c-390b-42b7-a4b8-33390bc1a602": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"b86f2519-59e8-4c3d-ba81-3d1541111f66": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "ES5_Destination",
			"destinationSource": "consumer",
			"path": "/Products('${context.productID}')",
			"httpMethod": "GET",
			"responseVariable": "${context.response}",
			"id": "servicetask1",
			"name": "ReadProductData"
		},
		"2c81ced0-52cf-426c-8e3d-7d6efd9f8d0d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ShoppingCartWorkkflow/ReadProdPrice.js",
			"id": "scripttask1",
			"name": "CheckProductPRICE"
		},
		"4d95e771-3e75-4827-821f-aaf90310e837": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "CheckAutoApprove",
			"default": "a60cb3a9-bd6d-4583-ba8c-5502b75cb360"
		},
		"2b5588d4-2651-49ed-b779-48b6be571f10": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "AutoApprovalMail",
			"mailDefinitionRef": "b6921779-a435-418d-98f1-333c3c925c56"
		},
		"74851b51-e67d-4aa2-8648-670e1bd7ff7b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Please approve Request for Product ${context.response.d.Name}",
			"description": "Please approve Request for Product ${context.response.d.Name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/ShoppingCartWorkkflow/productdetailsform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "productdetailsform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "REquest for Approval"
		},
		"0540fd87-8c49-4a44-9dd3-f89974bbd7ca": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ShoppingCartWorkkflow/CheckApprovalRejectStatus.js",
			"id": "scripttask2",
			"name": "CheckApproveReject"
		},
		"71e6fbff-727a-45d7-80ec-046be53e9cfa": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "CheckStatusofCart",
			"default": "d93f09a4-2ebf-44e1-a981-8a0a8d4e037c"
		},
		"c39aa579-01ec-43cd-875d-183b545ff4e5": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "Approval Mail",
			"mailDefinitionRef": "5807c199-b1d4-4306-955c-47e28ff6d966"
		},
		"8ff07462-45ef-4f0c-9ed4-68da2d0112ce": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask3",
			"name": "Reject Mail",
			"mailDefinitionRef": "aeee0a58-d228-416f-9c0b-22b0854fa583"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "b86f2519-59e8-4c3d-ba81-3d1541111f66"
		},
		"7cb177eb-a02d-4b7f-b2ed-919a4f7bb7fb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "b86f2519-59e8-4c3d-ba81-3d1541111f66",
			"targetRef": "2c81ced0-52cf-426c-8e3d-7d6efd9f8d0d"
		},
		"11791763-14b5-483e-8551-5da3b1847d32": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "2c81ced0-52cf-426c-8e3d-7d6efd9f8d0d",
			"targetRef": "4d95e771-3e75-4827-821f-aaf90310e837"
		},
		"3a314016-3e04-4411-97ee-6fb3a70f29c2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.autoApprove == true}",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "4d95e771-3e75-4827-821f-aaf90310e837",
			"targetRef": "2b5588d4-2651-49ed-b779-48b6be571f10"
		},
		"7828b829-b20b-4138-ba44-2e0a15d8e255": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "2b5588d4-2651-49ed-b779-48b6be571f10",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"a60cb3a9-bd6d-4583-ba8c-5502b75cb360": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "4d95e771-3e75-4827-821f-aaf90310e837",
			"targetRef": "74851b51-e67d-4aa2-8648-670e1bd7ff7b"
		},
		"c992cd78-8cc6-4667-a93e-4cb8ef5ff549": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "74851b51-e67d-4aa2-8648-670e1bd7ff7b",
			"targetRef": "0540fd87-8c49-4a44-9dd3-f89974bbd7ca"
		},
		"9879522e-bbc7-40e0-9570-52757a60bef3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "0540fd87-8c49-4a44-9dd3-f89974bbd7ca",
			"targetRef": "71e6fbff-727a-45d7-80ec-046be53e9cfa"
		},
		"7d96a968-2c22-45e9-b4ef-782b542a07ed": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.userDecision == \"approve\"}",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "71e6fbff-727a-45d7-80ec-046be53e9cfa",
			"targetRef": "c39aa579-01ec-43cd-875d-183b545ff4e5"
		},
		"7071be1f-2a0d-4f87-a33c-2d9fb7844022": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "c39aa579-01ec-43cd-875d-183b545ff4e5",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d93f09a4-2ebf-44e1-a981-8a0a8d4e037c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "71e6fbff-727a-45d7-80ec-046be53e9cfa",
			"targetRef": "8ff07462-45ef-4f0c-9ed4-68da2d0112ce"
		},
		"c83a8f34-412e-4026-adda-25fb143b7e3b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "8ff07462-45ef-4f0c-9ed4-68da2d0112ce",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"f149d712-e66d-47e6-907b-894a30901a56": {},
				"c518293d-7abe-472b-8755-e165505db52a": {},
				"37203f92-f13f-4136-a06d-08231a866eb2": {},
				"0313690e-4f4c-4629-b14c-c6758a285e3a": {},
				"691761f1-bfae-4a26-bc39-075ee236df00": {},
				"f6298cc8-e06c-4111-8aab-a0b0dfe282e3": {},
				"ed22b915-1fd6-479f-83de-eb18692c1bae": {},
				"40144257-c920-4998-b2ea-9c8b69b58953": {},
				"0a2de6e0-6c86-4438-aa05-a4de2f910712": {},
				"b6973c57-55f3-4b31-a44c-5f4351163716": {},
				"ca0ecba1-151a-478e-b96a-42d54ac52381": {},
				"a1ae17dc-430e-4be2-bb3a-3221f4cd43cd": {},
				"df8fef70-a7d1-4482-9faf-f27954798544": {},
				"64e12192-db82-480c-b1e1-55bcb6a6dc94": {},
				"548a3fa5-1868-4d08-987d-8c65f8053db1": {},
				"9bc4dc8a-99b9-47aa-8a13-8102f92f64d1": {},
				"3f4a44d5-aa63-4786-a82b-6e56cd5d14fb": {},
				"b4037238-cd69-4ee6-beb8-abbbe2a6fad4": {},
				"54595f11-ddad-4c5a-a7f9-59e8ef200263": {},
				"9c1d76ac-65f0-4f57-9242-c5125e6f53ad": {},
				"f14137bb-7353-4ab8-a189-5c0fad855238": {},
				"67172f6a-b7b5-4724-8559-74e4db5744bc": {},
				"79c78d6d-bc32-41a5-83f8-0ca1ae0144c5": {},
				"08f8f0c1-7b03-4672-8f96-146abd064323": {}
			}
		},
		"15d9682c-390b-42b7-a4b8-33390bc1a602": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/ShoppingCartWorkkflow/CartFile.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 138.99999970197678,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 137.49999970197678,
			"y": 972.9999940395355,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "154.99999970197678,44 154.99999970197678,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "f149d712-e66d-47e6-907b-894a30901a56",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"f149d712-e66d-47e6-907b-894a30901a56": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 104.99999970197678,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "b86f2519-59e8-4c3d-ba81-3d1541111f66"
		},
		"c518293d-7abe-472b-8755-e165505db52a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "154.99999970197678,154 154.99999970197678,204",
			"sourceSymbol": "f149d712-e66d-47e6-907b-894a30901a56",
			"targetSymbol": "37203f92-f13f-4136-a06d-08231a866eb2",
			"object": "7cb177eb-a02d-4b7f-b2ed-919a4f7bb7fb"
		},
		"37203f92-f13f-4136-a06d-08231a866eb2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 104.99999970197678,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "2c81ced0-52cf-426c-8e3d-7d6efd9f8d0d"
		},
		"0313690e-4f4c-4629-b14c-c6758a285e3a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "154.99999970197678,264 154.99999970197678,314",
			"sourceSymbol": "37203f92-f13f-4136-a06d-08231a866eb2",
			"targetSymbol": "691761f1-bfae-4a26-bc39-075ee236df00",
			"object": "11791763-14b5-483e-8551-5da3b1847d32"
		},
		"691761f1-bfae-4a26-bc39-075ee236df00": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 133.99999970197678,
			"y": 314,
			"object": "4d95e771-3e75-4827-821f-aaf90310e837"
		},
		"f6298cc8-e06c-4111-8aab-a0b0dfe282e3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "154.99999970197678,356 154.99999970197678,390.99999940395355 79.99999970197678,390.99999940395355 79.99999970197678,425.9999988079071",
			"sourceSymbol": "691761f1-bfae-4a26-bc39-075ee236df00",
			"targetSymbol": "ed22b915-1fd6-479f-83de-eb18692c1bae",
			"object": "3a314016-3e04-4411-97ee-6fb3a70f29c2"
		},
		"ed22b915-1fd6-479f-83de-eb18692c1bae": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 29.999999701976776,
			"y": 425.9999988079071,
			"width": 100,
			"height": 60,
			"object": "2b5588d4-2651-49ed-b779-48b6be571f10"
		},
		"40144257-c920-4998-b2ea-9c8b69b58953": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "79.99999970197678,485.9999988079071 79.99999970197678,520.9999982118607 87,520.9999982118607 87,650.9999970197678 116,650.9999970197678 116,762.9999958276749 12,762.9999958276749 12,937.999994635582 154.99999970197678,937.999994635582 154.99999970197678,972.9999940395355",
			"sourceSymbol": "ed22b915-1fd6-479f-83de-eb18692c1bae",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "7828b829-b20b-4138-ba44-2e0a15d8e255"
		},
		"0a2de6e0-6c86-4438-aa05-a4de2f910712": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 179.99999970197678,
			"y": 425.9999988079071,
			"width": 100,
			"height": 60,
			"object": "74851b51-e67d-4aa2-8648-670e1bd7ff7b",
			"symbols": {
				"872bd0ba-ae6c-4556-8caf-47e8d43a0752": {}
			}
		},
		"b6973c57-55f3-4b31-a44c-5f4351163716": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "154.99999970197678,356 154.99999970197678,390.99999940395355 229.99999970197678,390.99999940395355 229.99999970197678,425.9999988079071",
			"sourceSymbol": "691761f1-bfae-4a26-bc39-075ee236df00",
			"targetSymbol": "0a2de6e0-6c86-4438-aa05-a4de2f910712",
			"object": "a60cb3a9-bd6d-4583-ba8c-5502b75cb360"
		},
		"ca0ecba1-151a-478e-b96a-42d54ac52381": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "229.99999970197678,485.9999988079071 229.99999970197678,520.9999982118607 172.99999940395355,520.9999982118607 172.99999940395355,555.9999976158142",
			"sourceSymbol": "0a2de6e0-6c86-4438-aa05-a4de2f910712",
			"targetSymbol": "a1ae17dc-430e-4be2-bb3a-3221f4cd43cd",
			"object": "c992cd78-8cc6-4667-a93e-4cb8ef5ff549"
		},
		"a1ae17dc-430e-4be2-bb3a-3221f4cd43cd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 122.99999940395355,
			"y": 555.9999976158142,
			"width": 100,
			"height": 60,
			"object": "0540fd87-8c49-4a44-9dd3-f89974bbd7ca"
		},
		"df8fef70-a7d1-4482-9faf-f27954798544": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "172.99999940395355,615.9999976158142 172.99999940395355,685.9999964237213",
			"sourceSymbol": "a1ae17dc-430e-4be2-bb3a-3221f4cd43cd",
			"targetSymbol": "64e12192-db82-480c-b1e1-55bcb6a6dc94",
			"object": "9879522e-bbc7-40e0-9570-52757a60bef3"
		},
		"64e12192-db82-480c-b1e1-55bcb6a6dc94": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 151.99999940395355,
			"y": 685.9999964237213,
			"object": "71e6fbff-727a-45d7-80ec-046be53e9cfa"
		},
		"548a3fa5-1868-4d08-987d-8c65f8053db1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "172.99999940395355,727.9999964237213 172.99999940395355,807.9999958276749 97.99999940395355,807.9999958276749 97.99999940395355,842.9999952316284",
			"sourceSymbol": "64e12192-db82-480c-b1e1-55bcb6a6dc94",
			"targetSymbol": "9bc4dc8a-99b9-47aa-8a13-8102f92f64d1",
			"object": "7d96a968-2c22-45e9-b4ef-782b542a07ed"
		},
		"9bc4dc8a-99b9-47aa-8a13-8102f92f64d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 47.99999940395355,
			"y": 842.9999952316284,
			"width": 100,
			"height": 60,
			"object": "c39aa579-01ec-43cd-875d-183b545ff4e5"
		},
		"3f4a44d5-aa63-4786-a82b-6e56cd5d14fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "97.99999940395355,902.9999952316284 97.99999940395355,937.999994635582 154.99999970197678,937.999994635582 154.99999970197678,972.9999940395355",
			"sourceSymbol": "9bc4dc8a-99b9-47aa-8a13-8102f92f64d1",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "7071be1f-2a0d-4f87-a33c-2d9fb7844022"
		},
		"b4037238-cd69-4ee6-beb8-abbbe2a6fad4": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 197.99999940395355,
			"y": 842.9999952316284,
			"width": 100,
			"height": 60,
			"object": "8ff07462-45ef-4f0c-9ed4-68da2d0112ce"
		},
		"54595f11-ddad-4c5a-a7f9-59e8ef200263": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "172.99999940395355,727.9999964237213 172.99999940395355,807.9999958276749 247.99999940395355,807.9999958276749 247.99999940395355,842.9999952316284",
			"sourceSymbol": "64e12192-db82-480c-b1e1-55bcb6a6dc94",
			"targetSymbol": "b4037238-cd69-4ee6-beb8-abbbe2a6fad4",
			"object": "d93f09a4-2ebf-44e1-a981-8a0a8d4e037c"
		},
		"9c1d76ac-65f0-4f57-9242-c5125e6f53ad": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "247.99999940395355,902.9999952316284 247.99999940395355,937.999994635582 154.99999970197678,937.999994635582 154.99999970197678,972.9999940395355",
			"sourceSymbol": "b4037238-cd69-4ee6-beb8-abbbe2a6fad4",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "c83a8f34-412e-4026-adda-25fb143b7e3b"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"maildefinition": 4,
			"sequenceflow": 15,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 2,
			"usertask": 1,
			"servicetask": 2,
			"scripttask": 2,
			"mailtask": 4,
			"exclusivegateway": 2
		},
		"b6921779-a435-418d-98f1-333c3c925c56": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "avibajaj@deloitte.com",
			"subject": "Product ${context.response.d.Name} has been autoApproved",
			"text": "Product ${context.response.d.Name} has been autoApproved",
			"id": "maildefinition1"
		},
		"aeee0a58-d228-416f-9c0b-22b0854fa583": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "avibajaj@deloitte.com",
			"subject": "Your Cart has been rejected",
			"text": "Your Cart has been rejected\n\nJSON Rejected Data\n${context.response.d}",
			"id": "maildefinition2"
		},
		"5807c199-b1d4-4306-955c-47e28ff6d966": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "avibajaj@deloitte.com",
			"subject": "Your cart has been Approved",
			"text": "Your cart has been Approved\n\nJSON Approved Data\n${context.response.d}",
			"id": "maildefinition3"
		},
		"00e6935e-d308-470a-90d5-d15bc91f510a": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": true,
			"id": "boundarytimerevent1",
			"name": "BoundaryTimerEvent1",
			"attachedToRef": "74851b51-e67d-4aa2-8648-670e1bd7ff7b",
			"eventDefinitions": {
				"d8b5ac32-b537-43b5-85a2-4e24dc22bf4c": {}
			}
		},
		"d8b5ac32-b537-43b5-85a2-4e24dc22bf4c": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		},
		"872bd0ba-ae6c-4556-8caf-47e8d43a0752": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 213.99999970197678,
			"y": 469.9999988079071,
			"object": "00e6935e-d308-470a-90d5-d15bc91f510a"
		},
		"b2f4f817-9f3a-4136-8d23-498e83295af2": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask4",
			"name": "Cancellation Email",
			"mailDefinitionRef": "b54768ae-10ae-4824-97e5-2e130bf7873b"
		},
		"f14137bb-7353-4ab8-a189-5c0fad855238": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 296,
			"y": 542,
			"width": 100,
			"height": 60,
			"object": "b2f4f817-9f3a-4136-8d23-498e83295af2"
		},
		"2277bb39-73fb-465c-a46e-c9444ed68b66": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "00e6935e-d308-470a-90d5-d15bc91f510a",
			"targetRef": "b2f4f817-9f3a-4136-8d23-498e83295af2"
		},
		"67172f6a-b7b5-4724-8559-74e4db5744bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "229.99999970197678,501.9999988079071 230,522 346,522 346,542.5",
			"sourceSymbol": "872bd0ba-ae6c-4556-8caf-47e8d43a0752",
			"targetSymbol": "f14137bb-7353-4ab8-a189-5c0fad855238",
			"object": "2277bb39-73fb-465c-a46e-c9444ed68b66"
		},
		"b54768ae-10ae-4824-97e5-2e130bf7873b": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "avinashbajaj89@outlook.com",
			"subject": "Your cart has been cancelled by system",
			"text": "Your cart has been cancelled by system",
			"id": "maildefinition4"
		},
		"a33ca926-a477-4989-b8db-56f5328b8896": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"79c78d6d-bc32-41a5-83f8-0ca1ae0144c5": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 446,
			"y": 554.5,
			"width": 35,
			"height": 35,
			"object": "a33ca926-a477-4989-b8db-56f5328b8896"
		},
		"e0bc7ac6-068c-4a88-ad1c-adbe4fad9211": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "b2f4f817-9f3a-4136-8d23-498e83295af2",
			"targetRef": "a33ca926-a477-4989-b8db-56f5328b8896"
		},
		"08f8f0c1-7b03-4672-8f96-146abd064323": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "346,572 463.5,572",
			"sourceSymbol": "f14137bb-7353-4ab8-a189-5c0fad855238",
			"targetSymbol": "79c78d6d-bc32-41a5-83f8-0ca1ae0144c5",
			"object": "e0bc7ac6-068c-4a88-ad1c-adbe4fad9211"
		}
	}
}