package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRevisionAction;

/* loaded from: classes15.dex */
public interface CTRevisionComment extends XmlObject {
    public static final DocumentFactory<CTRevisionComment> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionComment> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisioncomment6c63type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STRevisionAction.Enum getAction();

    boolean getAlwaysShow();

    String getAuthor();

    String getCell();

    String getGuid();

    boolean getHiddenColumn();

    boolean getHiddenRow();

    long getNewLength();

    boolean getOld();

    long getOldLength();

    long getSheetId();

    boolean isSetAction();

    boolean isSetAlwaysShow();

    boolean isSetHiddenColumn();

    boolean isSetHiddenRow();

    boolean isSetNewLength();

    boolean isSetOld();

    boolean isSetOldLength();

    void setAction(STRevisionAction.Enum r1);

    void setAlwaysShow(boolean z);

    void setAuthor(String str);

    void setCell(String str);

    void setGuid(String str);

    void setHiddenColumn(boolean z);

    void setHiddenRow(boolean z);

    void setNewLength(long j);

    void setOld(boolean z);

    void setOldLength(long j);

    void setSheetId(long j);

    void unsetAction();

    void unsetAlwaysShow();

    void unsetHiddenColumn();

    void unsetHiddenRow();

    void unsetNewLength();

    void unsetOld();

    void unsetOldLength();

    STRevisionAction xgetAction();

    XmlBoolean xgetAlwaysShow();

    STXstring xgetAuthor();

    STCellRef xgetCell();

    STGuid xgetGuid();

    XmlBoolean xgetHiddenColumn();

    XmlBoolean xgetHiddenRow();

    XmlUnsignedInt xgetNewLength();

    XmlBoolean xgetOld();

    XmlUnsignedInt xgetOldLength();

    XmlUnsignedInt xgetSheetId();

    void xsetAction(STRevisionAction sTRevisionAction);

    void xsetAlwaysShow(XmlBoolean xmlBoolean);

    void xsetAuthor(STXstring sTXstring);

    void xsetCell(STCellRef sTCellRef);

    void xsetGuid(STGuid sTGuid);

    void xsetHiddenColumn(XmlBoolean xmlBoolean);

    void xsetHiddenRow(XmlBoolean xmlBoolean);

    void xsetNewLength(XmlUnsignedInt xmlUnsignedInt);

    void xsetOld(XmlBoolean xmlBoolean);

    void xsetOldLength(XmlUnsignedInt xmlUnsignedInt);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);
}
