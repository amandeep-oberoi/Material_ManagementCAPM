using ManagementService as service from '../../srv/Material';
annotate service.Materials with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'materialID',
                Value : materialID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'storageBin',
                Value : storageBin,
            },
            {
                $Type : 'UI.DataField',
                Label : 'materialDescription',
                Value : materialDescription,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'materialID',
            Value : materialID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'storageBin',
            Value : storageBin,
        },
        {
            $Type : 'UI.DataField',
            Label : 'materialDescription',
            Value : materialDescription,
        },
        {
            $Type : 'UI.DataField',
            Value : supplier_ID,
            Label : 'supplier_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : packagingUnits.capacity,
            Label : 'capacity',
        },
    ],
    UI.SelectionFields : [
        materialID,
        storageBin,
    ],
);

annotate service.Materials with {
    supplier @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Suppliers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : supplier_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};

annotate service.Materials with {
    materialID @Common.Label : 'materialID'
};

annotate service.Materials with {
    storageBin @Common.Label : 'storageBin'
};

