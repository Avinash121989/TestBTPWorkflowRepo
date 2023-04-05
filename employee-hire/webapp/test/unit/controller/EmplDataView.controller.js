/*global QUnit*/

sap.ui.define([
	"avinashtestworkflow1/employee-hire/controller/EmplDataView.controller"
], function (Controller) {
	"use strict";

	QUnit.module("EmplDataView Controller");

	QUnit.test("I should test the EmplDataView controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
