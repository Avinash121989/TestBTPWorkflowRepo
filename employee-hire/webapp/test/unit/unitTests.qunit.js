/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"avinashtestworkflow1/employee-hire/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
