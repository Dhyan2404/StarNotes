package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.AutoLinkComparisonType;
import com.microsoft.schemas.office.visio.x2012.main.DataColumnsType;
import com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType;
import com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType;
import com.microsoft.schemas.office.visio.x2012.main.RefreshConflictType;
import com.microsoft.schemas.office.visio.x2012.main.RelType;
import com.microsoft.schemas.office.visio.x2012.main.RowMapType;
import com.microsoft.schemas.office.visio.x2012.main.impl.DataRecordSetTypeImpl;
import java.util.Calendar;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DataRecordSetTypeImpl extends XmlComplexContentImpl implements DataRecordSetType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "Rel"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "DataColumns"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "PrimaryKey"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "RowMap"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "RefreshConflict"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "AutoLinkComparison"), new QName("", "ID"), new QName("", "ConnectionID"), new QName("", "Command"), new QName("", "Options"), new QName("", "TimeRefreshed"), new QName("", "NextRowID"), new QName("", "Name"), new QName("", "RowOrder"), new QName("", "RefreshOverwriteAll"), new QName("", "RefreshNoReconciliationUI"), new QName("", "RefreshInterval"), new QName("", "ReplaceLinks"), new QName("", "Checksum")};
    private static final long serialVersionUID = 1;

    public DataRecordSetTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public AutoLinkComparisonType addNewAutoLinkComparison() {
        AutoLinkComparisonType autoLinkComparisonType;
        synchronized (monitor()) {
            check_orphaned();
            autoLinkComparisonType = (AutoLinkComparisonType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return autoLinkComparisonType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public DataColumnsType addNewDataColumns() {
        DataColumnsType dataColumnsType;
        synchronized (monitor()) {
            check_orphaned();
            dataColumnsType = (DataColumnsType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return dataColumnsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public PrimaryKeyType addNewPrimaryKey() {
        PrimaryKeyType primaryKeyType;
        synchronized (monitor()) {
            check_orphaned();
            primaryKeyType = (PrimaryKeyType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return primaryKeyType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RefreshConflictType addNewRefreshConflict() {
        RefreshConflictType refreshConflictType;
        synchronized (monitor()) {
            check_orphaned();
            refreshConflictType = (RefreshConflictType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return refreshConflictType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RelType addNewRel() {
        RelType relType;
        synchronized (monitor()) {
            check_orphaned();
            relType = (RelType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return relType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RowMapType addNewRowMap() {
        RowMapType rowMapType;
        synchronized (monitor()) {
            check_orphaned();
            rowMapType = (RowMapType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return rowMapType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public AutoLinkComparisonType[] getAutoLinkComparisonArray() {
        return (AutoLinkComparisonType[]) getXmlObjectArray(PROPERTY_QNAME[5], new AutoLinkComparisonType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public List<AutoLinkComparisonType> getAutoLinkComparisonList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tte
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.getAutoLinkComparisonArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ute
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DataRecordSetTypeImpl.this.setAutoLinkComparisonArray(((Integer) obj).intValue(), (AutoLinkComparisonType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vte
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.insertNewAutoLinkComparison(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wte
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataRecordSetTypeImpl.this.removeAutoLinkComparison(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xte
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(DataRecordSetTypeImpl.this.sizeOfAutoLinkComparisonArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public long getChecksum() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[18]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public String getCommand() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public long getConnectionID() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public DataColumnsType getDataColumns() {
        DataColumnsType dataColumnsType;
        synchronized (monitor()) {
            check_orphaned();
            dataColumnsType = (DataColumnsType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (dataColumnsType == null) {
                dataColumnsType = null;
            }
        }
        return dataColumnsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public long getID() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public long getNextRowID() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public long getOptions() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public PrimaryKeyType[] getPrimaryKeyArray() {
        return (PrimaryKeyType[]) getXmlObjectArray(PROPERTY_QNAME[2], new PrimaryKeyType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public List<PrimaryKeyType> getPrimaryKeyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ote
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.getPrimaryKeyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pte
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DataRecordSetTypeImpl.this.setPrimaryKeyArray(((Integer) obj).intValue(), (PrimaryKeyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qte
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.insertNewPrimaryKey(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rte
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataRecordSetTypeImpl.this.removePrimaryKey(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ste
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(DataRecordSetTypeImpl.this.sizeOfPrimaryKeyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RefreshConflictType[] getRefreshConflictArray() {
        return (RefreshConflictType[]) getXmlObjectArray(PROPERTY_QNAME[4], new RefreshConflictType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public List<RefreshConflictType> getRefreshConflictList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cue
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.getRefreshConflictArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.due
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DataRecordSetTypeImpl.this.setRefreshConflictArray(((Integer) obj).intValue(), (RefreshConflictType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eue
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.insertNewRefreshConflict(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fue
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataRecordSetTypeImpl.this.removeRefreshConflict(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gue
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(DataRecordSetTypeImpl.this.sizeOfRefreshConflictArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public long getRefreshInterval() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean getRefreshNoReconciliationUI() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[15]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean getRefreshOverwriteAll() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[14]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RelType getRel() {
        RelType relType;
        synchronized (monitor()) {
            check_orphaned();
            relType = (RelType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (relType == null) {
                relType = null;
            }
        }
        return relType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public long getReplaceLinks() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[17]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RowMapType[] getRowMapArray() {
        return (RowMapType[]) getXmlObjectArray(PROPERTY_QNAME[3], new RowMapType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public List<RowMapType> getRowMapList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nte
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.getRowMapArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yte
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DataRecordSetTypeImpl.this.setRowMapArray(((Integer) obj).intValue(), (RowMapType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zte
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetTypeImpl.this.insertNewRowMap(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.aue
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataRecordSetTypeImpl.this.removeRowMap(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bue
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(DataRecordSetTypeImpl.this.sizeOfRowMapArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean getRowOrder() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public Calendar getTimeRefreshed() {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            calendarValue = simpleValue == null ? null : simpleValue.getCalendarValue();
        }
        return calendarValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public AutoLinkComparisonType insertNewAutoLinkComparison(int i) {
        AutoLinkComparisonType autoLinkComparisonType;
        synchronized (monitor()) {
            check_orphaned();
            autoLinkComparisonType = (AutoLinkComparisonType) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return autoLinkComparisonType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public PrimaryKeyType insertNewPrimaryKey(int i) {
        PrimaryKeyType primaryKeyType;
        synchronized (monitor()) {
            check_orphaned();
            primaryKeyType = (PrimaryKeyType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return primaryKeyType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RefreshConflictType insertNewRefreshConflict(int i) {
        RefreshConflictType refreshConflictType;
        synchronized (monitor()) {
            check_orphaned();
            refreshConflictType = (RefreshConflictType) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return refreshConflictType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RowMapType insertNewRowMap(int i) {
        RowMapType rowMapType;
        synchronized (monitor()) {
            check_orphaned();
            rowMapType = (RowMapType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return rowMapType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetChecksum() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[18]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetCommand() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetConnectionID() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetNextRowID() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetOptions() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetRefreshInterval() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetRefreshNoReconciliationUI() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetRefreshOverwriteAll() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetReplaceLinks() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[17]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetRowOrder() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public boolean isSetTimeRefreshed() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void removeAutoLinkComparison(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void removePrimaryKey(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void removeRefreshConflict(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void removeRowMap(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setAutoLinkComparisonArray(AutoLinkComparisonType[] autoLinkComparisonTypeArr) {
        check_orphaned();
        arraySetterHelper(autoLinkComparisonTypeArr, PROPERTY_QNAME[5]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setChecksum(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[18]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[18]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setCommand(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setConnectionID(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setDataColumns(DataColumnsType dataColumnsType) {
        generatedSetterHelperImpl(dataColumnsType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setID(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setNextRowID(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setOptions(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setPrimaryKeyArray(PrimaryKeyType[] primaryKeyTypeArr) {
        check_orphaned();
        arraySetterHelper(primaryKeyTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRefreshConflictArray(RefreshConflictType[] refreshConflictTypeArr) {
        check_orphaned();
        arraySetterHelper(refreshConflictTypeArr, PROPERTY_QNAME[4]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRefreshInterval(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRefreshNoReconciliationUI(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRefreshOverwriteAll(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRel(RelType relType) {
        generatedSetterHelperImpl(relType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setReplaceLinks(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[17]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[17]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRowMapArray(RowMapType[] rowMapTypeArr) {
        check_orphaned();
        arraySetterHelper(rowMapTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRowOrder(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setTimeRefreshed(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setCalendarValue(calendar);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public int sizeOfAutoLinkComparisonArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public int sizeOfPrimaryKeyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public int sizeOfRefreshConflictArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public int sizeOfRowMapArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetChecksum() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[18]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetCommand() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetConnectionID() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetNextRowID() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetOptions() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetRefreshInterval() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetRefreshNoReconciliationUI() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetRefreshOverwriteAll() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetReplaceLinks() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[17]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetRowOrder() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void unsetTimeRefreshed() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlUnsignedInt xgetChecksum() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[18]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlString xgetCommand() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlUnsignedInt xgetConnectionID() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlUnsignedInt xgetID() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlString xgetName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlUnsignedInt xgetNextRowID() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlUnsignedInt xgetOptions() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlUnsignedInt xgetRefreshInterval() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlBoolean xgetRefreshNoReconciliationUI() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[15]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlBoolean xgetRefreshOverwriteAll() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[14]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlUnsignedInt xgetReplaceLinks() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[17]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlBoolean xgetRowOrder() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public XmlDateTime xgetTimeRefreshed() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return xmlDateTime;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetChecksum(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[18]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[18]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetCommand(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetConnectionID(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetID(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetName(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[12]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[12]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetNextRowID(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[11]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetOptions(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetRefreshInterval(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[16]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[16]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetRefreshNoReconciliationUI(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[15]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[15]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetRefreshOverwriteAll(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[14]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[14]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetReplaceLinks(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[17]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[17]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetRowOrder(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[13]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void xsetTimeRefreshed(XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDateTime xmlDateTime2 = (XmlDateTime) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlDateTime2 == null) {
                xmlDateTime2 = (XmlDateTime) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlDateTime2.set(xmlDateTime);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public AutoLinkComparisonType getAutoLinkComparisonArray(int i) {
        AutoLinkComparisonType autoLinkComparisonType;
        synchronized (monitor()) {
            check_orphaned();
            autoLinkComparisonType = (AutoLinkComparisonType) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (autoLinkComparisonType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return autoLinkComparisonType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public PrimaryKeyType getPrimaryKeyArray(int i) {
        PrimaryKeyType primaryKeyType;
        synchronized (monitor()) {
            check_orphaned();
            primaryKeyType = (PrimaryKeyType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (primaryKeyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return primaryKeyType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RefreshConflictType getRefreshConflictArray(int i) {
        RefreshConflictType refreshConflictType;
        synchronized (monitor()) {
            check_orphaned();
            refreshConflictType = (RefreshConflictType) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (refreshConflictType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return refreshConflictType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public RowMapType getRowMapArray(int i) {
        RowMapType rowMapType;
        synchronized (monitor()) {
            check_orphaned();
            rowMapType = (RowMapType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (rowMapType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return rowMapType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setAutoLinkComparisonArray(int i, AutoLinkComparisonType autoLinkComparisonType) {
        generatedSetterHelperImpl(autoLinkComparisonType, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setPrimaryKeyArray(int i, PrimaryKeyType primaryKeyType) {
        generatedSetterHelperImpl(primaryKeyType, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRefreshConflictArray(int i, RefreshConflictType refreshConflictType) {
        generatedSetterHelperImpl(refreshConflictType, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType
    public void setRowMapArray(int i, RowMapType rowMapType) {
        generatedSetterHelperImpl(rowMapType, PROPERTY_QNAME[3], i, (short) 2);
    }
}
