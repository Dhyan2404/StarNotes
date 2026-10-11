package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTQueryTableRefresh extends XmlObject {
    public static final DocumentFactory<CTQueryTableRefresh> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQueryTableRefresh> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquerytablerefreshac74type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTQueryTableDeletedFields addNewQueryTableDeletedFields();

    CTQueryTableFields addNewQueryTableFields();

    CTSortState addNewSortState();

    CTExtensionList getExtLst();

    boolean getFieldIdWrapped();

    boolean getHeadersInLastRefresh();

    short getMinimumVersion();

    long getNextId();

    boolean getPreserveSortFilterLayout();

    CTQueryTableDeletedFields getQueryTableDeletedFields();

    CTQueryTableFields getQueryTableFields();

    CTSortState getSortState();

    long getUnboundColumnsLeft();

    long getUnboundColumnsRight();

    boolean isSetExtLst();

    boolean isSetFieldIdWrapped();

    boolean isSetHeadersInLastRefresh();

    boolean isSetMinimumVersion();

    boolean isSetNextId();

    boolean isSetPreserveSortFilterLayout();

    boolean isSetQueryTableDeletedFields();

    boolean isSetSortState();

    boolean isSetUnboundColumnsLeft();

    boolean isSetUnboundColumnsRight();

    void setExtLst(CTExtensionList cTExtensionList);

    void setFieldIdWrapped(boolean z);

    void setHeadersInLastRefresh(boolean z);

    void setMinimumVersion(short s);

    void setNextId(long j);

    void setPreserveSortFilterLayout(boolean z);

    void setQueryTableDeletedFields(CTQueryTableDeletedFields cTQueryTableDeletedFields);

    void setQueryTableFields(CTQueryTableFields cTQueryTableFields);

    void setSortState(CTSortState cTSortState);

    void setUnboundColumnsLeft(long j);

    void setUnboundColumnsRight(long j);

    void unsetExtLst();

    void unsetFieldIdWrapped();

    void unsetHeadersInLastRefresh();

    void unsetMinimumVersion();

    void unsetNextId();

    void unsetPreserveSortFilterLayout();

    void unsetQueryTableDeletedFields();

    void unsetSortState();

    void unsetUnboundColumnsLeft();

    void unsetUnboundColumnsRight();

    XmlBoolean xgetFieldIdWrapped();

    XmlBoolean xgetHeadersInLastRefresh();

    XmlUnsignedByte xgetMinimumVersion();

    XmlUnsignedInt xgetNextId();

    XmlBoolean xgetPreserveSortFilterLayout();

    XmlUnsignedInt xgetUnboundColumnsLeft();

    XmlUnsignedInt xgetUnboundColumnsRight();

    void xsetFieldIdWrapped(XmlBoolean xmlBoolean);

    void xsetHeadersInLastRefresh(XmlBoolean xmlBoolean);

    void xsetMinimumVersion(XmlUnsignedByte xmlUnsignedByte);

    void xsetNextId(XmlUnsignedInt xmlUnsignedInt);

    void xsetPreserveSortFilterLayout(XmlBoolean xmlBoolean);

    void xsetUnboundColumnsLeft(XmlUnsignedInt xmlUnsignedInt);

    void xsetUnboundColumnsRight(XmlUnsignedInt xmlUnsignedInt);
}
