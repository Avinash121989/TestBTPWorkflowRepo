{
	"contents": {
		"475d979f-ce28-415d-9ea1-0aff4c177646": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "avinash.test.workflow1.employeeworkflow",
			"subject": "EmployeeWorkflow",
			"name": "EmployeeWorkflow",
			"documentation": "Employee Budget Workflow",
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
				"b6892cf0-31e6-454e-b96b-91526cc788f4": {
					"name": "EmployeeTaskUI"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"0275f924-e2a9-4f62-9078-ad5e4c36f4bc": {
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
				"2867a77d-416b-40ce-962a-6d7bb03063d8": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"b6892cf0-31e6-454e-b96b-91526cc788f4": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Please fill the Employee Details",
			"description": "Please fill the Employee Details",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://employee-budget.avinashtestworkflow1employeehire/avinash.test.workflow1.employeehire",
			"recipientUsers": "${info.startedBy}",
			"id": "usertask1",
			"name": "EmployeeTaskUI"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "b6892cf0-31e6-454e-b96b-91526cc788f4"
		},
		"0275f924-e2a9-4f62-9078-ad5e4c36f4bc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "b6892cf0-31e6-454e-b96b-91526cc788f4",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"9442c0c7-2150-49cb-aeee-cdc6261b66c1": {},
				"204ff33e-59d8-4bca-920f-d08b7e8f4e12": {}
			}
		},
		"2867a77d-416b-40ce-962a-6d7bb03063d8": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/EmployeeWorkflow/employeeData.json",
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
			"targetSymbol": "9442c0c7-2150-49cb-aeee-cdc6261b66c1",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"9442c0c7-2150-49cb-aeee-cdc6261b66c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "b6892cf0-31e6-454e-b96b-91526cc788f4"
		},
		"204ff33e-59d8-4bca-920f-d08b7e8f4e12": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,117.125 357.5,117.125",
			"sourceSymbol": "9442c0c7-2150-49cb-aeee-cdc6261b66c1",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0275f924-e2a9-4f62-9078-ad5e4c36f4bc"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		}
	}
}