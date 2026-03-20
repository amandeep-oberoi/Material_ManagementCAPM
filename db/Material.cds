namespace warehouseManagement;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Materials : cuid, managed {
    materialID          : Integer;
    storageBin          : String;
    materialDescription : String;
    supplier            : Association to Suppliers;
    packagingUnits : Composition of many PackagingUnits on packagingUnits.material = $self;
}


entity Suppliers : cuid, managed {
    name      : String;
    materials : Association to many Materials
                    on materials.supplier = $self;
}

entity PackagingUnits : cuid, managed {
    type     : String;
    capacity : Integer;
    material : Association to Materials;

}
