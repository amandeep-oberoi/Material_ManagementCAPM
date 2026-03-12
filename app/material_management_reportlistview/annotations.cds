using ManagementService as service from '../../srv/Material';
annotate service.Materials with @(
    UI.FieldGroup #MaterialGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'material_ID',
                Value : material_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Material Description',
                Value : materialDescription,
            },
        ],
    },

    UI.FieldGroup #InformationGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'supplier_ID',
                Value : supplier_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'capacity',
                Value : capacity,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#MaterialGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'Material Information',
            Target : '@UI.FieldGroup#InformationGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Adminstration Information',
            ID : 'AdminstrationInformation',
            Target : '@UI.FieldGroup#AdminstrationInformation',
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
    UI.HeaderInfo : {
        TypeName : 'Material',
        TypeNamePlural : 'Materials',
        Title : {
            $Type : 'UI.DataField',
            Value : materialID,
        },
        TypeImageUrl : 'sap-icon://customer-and-supplier',
    },
    UI.FieldGroup #AdminstrationInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ],
    },
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

