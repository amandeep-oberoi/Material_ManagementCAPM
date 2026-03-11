using {warehouseManagement as warehouse} from '../db/Material';

service ManagementService{
 entity Materials as projection on warehouse.Materials;
 entity Suppliers as projection on warehouse.Suppliers;
 entity PackagingUnits as projection on warehouse.PackagingUnits;
}