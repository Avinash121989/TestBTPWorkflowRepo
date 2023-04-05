{
	"contents": {
		"9af1cc11-1e00-4e29-8440-2e0b279e8ab1": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.testa.ankit.leaverequest",
			"subject": "LeaveRequest",
			"name": "LeaveRequest",
			"documentation": "Leave REquest",
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
				"84e88364-28ce-4c4a-91ef-0872f4958f16": {
					"name": "UserInputForm"
				},
				"74f23166-0ffd-4aa6-a642-54d8bbe563f1": {
					"name": "ScriptTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"66bbfaa8-6b1f-4bbe-8ca5-96da879c6f8e": {
					"name": "SequenceFlow2"
				},
				"3956343d-071d-46d3-ba77-3074ea3e97a6": {
					"name": "SequenceFlow3"
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
				"b35cb4f2-af50-4694-ae8d-b61f5eb8250b": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"84e88364-28ce-4c4a-91ef-0872f4958f16": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Please approve the leave of ${context.empid}",
			"description": "Leave of ${context.empid} with reason ${context.leavereason}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/LeaveRequest/leaverequestForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "leaverequestform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "UserInputForm",
			"dueDateRef": "93459776-ede3-489c-accc-770311aac797"
		},
		"74f23166-0ffd-4aa6-a642-54d8bbe563f1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/LeaveRequest/ApprRejectstatus.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "84e88364-28ce-4c4a-91ef-0872f4958f16"
		},
		"66bbfaa8-6b1f-4bbe-8ca5-96da879c6f8e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "84e88364-28ce-4c4a-91ef-0872f4958f16",
			"targetRef": "74f23166-0ffd-4aa6-a642-54d8bbe563f1"
		},
		"3956343d-071d-46d3-ba77-3074ea3e97a6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "74f23166-0ffd-4aa6-a642-54d8bbe563f1",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"2f7af233-d187-4771-9aab-638ef04bfd83": {},
				"4e730b5c-6f46-4df0-a61e-067c101b5b1d": {},
				"c4f306ba-55dc-49d0-b6ce-97b3a059fc7a": {},
				"9705bc6a-6681-4184-b0cf-55844489d9f0": {}
			}
		},
		"b35cb4f2-af50-4694-ae8d-b61f5eb8250b": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/LeaveRequest/leaverequestdata.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 394,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "2f7af233-d187-4771-9aab-638ef04bfd83",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"2f7af233-d187-4771-9aab-638ef04bfd83": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "84e88364-28ce-4c4a-91ef-0872f4958f16"
		},
		"4e730b5c-6f46-4df0-a61e-067c101b5b1d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "2f7af233-d187-4771-9aab-638ef04bfd83",
			"targetSymbol": "c4f306ba-55dc-49d0-b6ce-97b3a059fc7a",
			"object": "66bbfaa8-6b1f-4bbe-8ca5-96da879c6f8e"
		},
		"c4f306ba-55dc-49d0-b6ce-97b3a059fc7a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "74f23166-0ffd-4aa6-a642-54d8bbe563f1"
		},
		"9705bc6a-6681-4184-b0cf-55844489d9f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,42 394,42",
			"sourceSymbol": "c4f306ba-55dc-49d0-b6ce-97b3a059fc7a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "3956343d-071d-46d3-ba77-3074ea3e97a6"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 1
		},
		"93459776-ede3-489c-accc-770311aac797": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		}
	}
}