sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"materialmanagementreportlistview/test/integration/pages/MaterialsList",
	"materialmanagementreportlistview/test/integration/pages/MaterialsObjectPage"
], function (JourneyRunner, MaterialsList, MaterialsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('materialmanagementreportlistview') + '/test/flpSandbox.html#materialmanagementreportlistvi-tile',
        pages: {
			onTheMaterialsList: MaterialsList,
			onTheMaterialsObjectPage: MaterialsObjectPage
        },
        async: true
    });

    return runner;
});

