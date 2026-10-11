package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTQueryTableField extends XmlObject {
    public static final DocumentFactory<CTQueryTableField> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQueryTableField> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquerytablefield9f13type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    boolean getClipped();

    boolean getDataBound();

    CTExtensionList getExtLst();

    boolean getFillFormulas();

    long getId();

    String getName();

    boolean getRowNumbers();

    long getTableColumnId();

    boolean isSetClipped();

    boolean isSetDataBound();

    boolean isSetExtLst();

    boolean isSetFillFormulas();

    boolean isSetName();

    boolean isSetRowNumbers();

    boolean isSetTableColumnId();

    void setClipped(boolean z);

    void setDataBound(boolean z);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFillFormulas(boolean z);

    void setId(long j);

    void setName(String str);

    void setRowNumbers(boolean z);

    void setTableColumnId(long j);

    void unsetClipped();

    void unsetDataBound();

    void unsetExtLst();

    void unsetFillFormulas();

    void unsetName();

    void unsetRowNumbers();

    void unsetTableColumnId();

    XmlBoolean xgetClipped();

    XmlBoolean xgetDataBound();

    XmlBoolean xgetFillFormulas();

    XmlUnsignedInt xgetId();

    STXstring xgetName();

    XmlBoolean xgetRowNumbers();

    XmlUnsignedInt xgetTableColumnId();

    void xsetClipped(XmlBoolean xmlBoolean);

    void xsetDataBound(XmlBoolean xmlBoolean);

    void xsetFillFormulas(XmlBoolean xmlBoolean);

    void xsetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STXstring sTXstring);

    void xsetRowNumbers(XmlBoolean xmlBoolean);

    void xsetTableColumnId(XmlUnsignedInt xmlUnsignedInt);
}
