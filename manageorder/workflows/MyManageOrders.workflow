{
	"contents": {
		"329b9014-313e-466d-8fb1-b11273a82721": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "avinash.test.workflow2.mymanageorders",
			"subject": "MyManageOrders",
			"name": "MyManageOrders",
			"documentation": "Manager Product Orders",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"c9f3e125-dd30-45eb-a421-0dbeb05c2fee": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"ff2b6260-3b3a-4fb3-bf7f-9edd5d7aa7da": {
					"name": "SequenceFlow2"
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
				"bf1f0ae1-5d0e-42ab-b8b0-7993572cf3c5": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c9f3e125-dd30-45eb-a421-0dbeb05c2fee": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "ES5_Destination",
			"destinationSource": "consumer",
			"path": "/Products('${context.productID}')?$expand=Reviews",
			"httpMethod": "GET",
			"responseVariable": "${context.response}",
			"headers": [],
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "c9f3e125-dd30-45eb-a421-0dbeb05c2fee"
		},
		"ff2b6260-3b3a-4fb3-bf7f-9edd5d7aa7da": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "c9f3e125-dd30-45eb-a421-0dbeb05c2fee",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"16295ed7-ec8c-4557-a61b-e7cdb8dbef10": {},
				"9b0a09ad-a7bb-495e-8b5d-4c07743f8f57": {}
			}
		},
		"bf1f0ae1-5d0e-42ab-b8b0-7993572cf3c5": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyManageOrders/productdetails.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "16295ed7-ec8c-4557-a61b-e7cdb8dbef10",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"16295ed7-ec8c-4557-a61b-e7cdb8dbef10": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "c9f3e125-dd30-45eb-a421-0dbeb05c2fee"
		},
		"9b0a09ad-a7bb-495e-8b5d-4c07743f8f57": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,117.125 357.5,117.125",
			"sourceSymbol": "16295ed7-ec8c-4557-a61b-e7cdb8dbef10",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "ff2b6260-3b3a-4fb3-bf7f-9edd5d7aa7da"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"servicetask": 1
		}
	}
}