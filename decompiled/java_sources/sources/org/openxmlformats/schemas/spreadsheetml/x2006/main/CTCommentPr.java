package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STTextHAlign;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STTextVAlign;

/* loaded from: classes15.dex */
public interface CTCommentPr extends XmlObject {
    public static final DocumentFactory<CTCommentPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCommentPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcommentprd920type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTObjectAnchor addNewAnchor();

    String getAltText();

    CTObjectAnchor getAnchor();

    boolean getAutoFill();

    boolean getAutoLine();

    boolean getAutoScale();

    boolean getDefaultSize();

    boolean getDisabled();

    boolean getJustLastX();

    boolean getLockText();

    boolean getLocked();

    boolean getPrint();

    STTextHAlign.Enum getTextHAlign();

    STTextVAlign.Enum getTextVAlign();

    boolean isSetAltText();

    boolean isSetAutoFill();

    boolean isSetAutoLine();

    boolean isSetAutoScale();

    boolean isSetDefaultSize();

    boolean isSetDisabled();

    boolean isSetJustLastX();

    boolean isSetLockText();

    boolean isSetLocked();

    boolean isSetPrint();

    boolean isSetTextHAlign();

    boolean isSetTextVAlign();

    void setAltText(String str);

    void setAnchor(CTObjectAnchor cTObjectAnchor);

    void setAutoFill(boolean z);

    void setAutoLine(boolean z);

    void setAutoScale(boolean z);

    void setDefaultSize(boolean z);

    void setDisabled(boolean z);

    void setJustLastX(boolean z);

    void setLockText(boolean z);

    void setLocked(boolean z);

    void setPrint(boolean z);

    void setTextHAlign(STTextHAlign.Enum r1);

    void setTextVAlign(STTextVAlign.Enum r1);

    void unsetAltText();

    void unsetAutoFill();

    void unsetAutoLine();

    void unsetAutoScale();

    void unsetDefaultSize();

    void unsetDisabled();

    void unsetJustLastX();

    void unsetLockText();

    void unsetLocked();

    void unsetPrint();

    void unsetTextHAlign();

    void unsetTextVAlign();

    STXstring xgetAltText();

    XmlBoolean xgetAutoFill();

    XmlBoolean xgetAutoLine();

    XmlBoolean xgetAutoScale();

    XmlBoolean xgetDefaultSize();

    XmlBoolean xgetDisabled();

    XmlBoolean xgetJustLastX();

    XmlBoolean xgetLockText();

    XmlBoolean xgetLocked();

    XmlBoolean xgetPrint();

    STTextHAlign xgetTextHAlign();

    STTextVAlign xgetTextVAlign();

    void xsetAltText(STXstring sTXstring);

    void xsetAutoFill(XmlBoolean xmlBoolean);

    void xsetAutoLine(XmlBoolean xmlBoolean);

    void xsetAutoScale(XmlBoolean xmlBoolean);

    void xsetDefaultSize(XmlBoolean xmlBoolean);

    void xsetDisabled(XmlBoolean xmlBoolean);

    void xsetJustLastX(XmlBoolean xmlBoolean);

    void xsetLockText(XmlBoolean xmlBoolean);

    void xsetLocked(XmlBoolean xmlBoolean);

    void xsetPrint(XmlBoolean xmlBoolean);

    void xsetTextHAlign(STTextHAlign sTTextHAlign);

    void xsetTextVAlign(STTextVAlign sTTextVAlign);
}
