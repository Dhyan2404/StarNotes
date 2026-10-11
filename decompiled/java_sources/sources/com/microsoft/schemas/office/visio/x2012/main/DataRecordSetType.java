package com.microsoft.schemas.office.visio.x2012.main;

import java.util.Calendar;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataRecordSetType extends XmlObject {
    public static final DocumentFactory<DataRecordSetType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataRecordSetType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datarecordsettype3544type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AutoLinkComparisonType addNewAutoLinkComparison();

    DataColumnsType addNewDataColumns();

    PrimaryKeyType addNewPrimaryKey();

    RefreshConflictType addNewRefreshConflict();

    RelType addNewRel();

    RowMapType addNewRowMap();

    AutoLinkComparisonType getAutoLinkComparisonArray(int i);

    AutoLinkComparisonType[] getAutoLinkComparisonArray();

    List<AutoLinkComparisonType> getAutoLinkComparisonList();

    long getChecksum();

    String getCommand();

    long getConnectionID();

    DataColumnsType getDataColumns();

    long getID();

    String getName();

    long getNextRowID();

    long getOptions();

    PrimaryKeyType getPrimaryKeyArray(int i);

    PrimaryKeyType[] getPrimaryKeyArray();

    List<PrimaryKeyType> getPrimaryKeyList();

    RefreshConflictType getRefreshConflictArray(int i);

    RefreshConflictType[] getRefreshConflictArray();

    List<RefreshConflictType> getRefreshConflictList();

    long getRefreshInterval();

    boolean getRefreshNoReconciliationUI();

    boolean getRefreshOverwriteAll();

    RelType getRel();

    long getReplaceLinks();

    RowMapType getRowMapArray(int i);

    RowMapType[] getRowMapArray();

    List<RowMapType> getRowMapList();

    boolean getRowOrder();

    Calendar getTimeRefreshed();

    AutoLinkComparisonType insertNewAutoLinkComparison(int i);

    PrimaryKeyType insertNewPrimaryKey(int i);

    RefreshConflictType insertNewRefreshConflict(int i);

    RowMapType insertNewRowMap(int i);

    boolean isSetChecksum();

    boolean isSetCommand();

    boolean isSetConnectionID();

    boolean isSetName();

    boolean isSetNextRowID();

    boolean isSetOptions();

    boolean isSetRefreshInterval();

    boolean isSetRefreshNoReconciliationUI();

    boolean isSetRefreshOverwriteAll();

    boolean isSetReplaceLinks();

    boolean isSetRowOrder();

    boolean isSetTimeRefreshed();

    void removeAutoLinkComparison(int i);

    void removePrimaryKey(int i);

    void removeRefreshConflict(int i);

    void removeRowMap(int i);

    void setAutoLinkComparisonArray(int i, AutoLinkComparisonType autoLinkComparisonType);

    void setAutoLinkComparisonArray(AutoLinkComparisonType[] autoLinkComparisonTypeArr);

    void setChecksum(long j);

    void setCommand(String str);

    void setConnectionID(long j);

    void setDataColumns(DataColumnsType dataColumnsType);

    void setID(long j);

    void setName(String str);

    void setNextRowID(long j);

    void setOptions(long j);

    void setPrimaryKeyArray(int i, PrimaryKeyType primaryKeyType);

    void setPrimaryKeyArray(PrimaryKeyType[] primaryKeyTypeArr);

    void setRefreshConflictArray(int i, RefreshConflictType refreshConflictType);

    void setRefreshConflictArray(RefreshConflictType[] refreshConflictTypeArr);

    void setRefreshInterval(long j);

    void setRefreshNoReconciliationUI(boolean z);

    void setRefreshOverwriteAll(boolean z);

    void setRel(RelType relType);

    void setReplaceLinks(long j);

    void setRowMapArray(int i, RowMapType rowMapType);

    void setRowMapArray(RowMapType[] rowMapTypeArr);

    void setRowOrder(boolean z);

    void setTimeRefreshed(Calendar calendar);

    int sizeOfAutoLinkComparisonArray();

    int sizeOfPrimaryKeyArray();

    int sizeOfRefreshConflictArray();

    int sizeOfRowMapArray();

    void unsetChecksum();

    void unsetCommand();

    void unsetConnectionID();

    void unsetName();

    void unsetNextRowID();

    void unsetOptions();

    void unsetRefreshInterval();

    void unsetRefreshNoReconciliationUI();

    void unsetRefreshOverwriteAll();

    void unsetReplaceLinks();

    void unsetRowOrder();

    void unsetTimeRefreshed();

    XmlUnsignedInt xgetChecksum();

    XmlString xgetCommand();

    XmlUnsignedInt xgetConnectionID();

    XmlUnsignedInt xgetID();

    XmlString xgetName();

    XmlUnsignedInt xgetNextRowID();

    XmlUnsignedInt xgetOptions();

    XmlUnsignedInt xgetRefreshInterval();

    XmlBoolean xgetRefreshNoReconciliationUI();

    XmlBoolean xgetRefreshOverwriteAll();

    XmlUnsignedInt xgetReplaceLinks();

    XmlBoolean xgetRowOrder();

    XmlDateTime xgetTimeRefreshed();

    void xsetChecksum(XmlUnsignedInt xmlUnsignedInt);

    void xsetCommand(XmlString xmlString);

    void xsetConnectionID(XmlUnsignedInt xmlUnsignedInt);

    void xsetID(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(XmlString xmlString);

    void xsetNextRowID(XmlUnsignedInt xmlUnsignedInt);

    void xsetOptions(XmlUnsignedInt xmlUnsignedInt);

    void xsetRefreshInterval(XmlUnsignedInt xmlUnsignedInt);

    void xsetRefreshNoReconciliationUI(XmlBoolean xmlBoolean);

    void xsetRefreshOverwriteAll(XmlBoolean xmlBoolean);

    void xsetReplaceLinks(XmlUnsignedInt xmlUnsignedInt);

    void xsetRowOrder(XmlBoolean xmlBoolean);

    void xsetTimeRefreshed(XmlDateTime xmlDateTime);
}
