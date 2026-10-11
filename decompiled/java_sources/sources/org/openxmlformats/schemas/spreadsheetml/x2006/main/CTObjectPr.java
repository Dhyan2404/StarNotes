package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTObjectPr extends XmlObject {
    public static final DocumentFactory<CTObjectPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTObjectPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctobjectpr7d2atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTObjectAnchor addNewAnchor();

    String getAltText();

    CTObjectAnchor getAnchor();

    boolean getAutoFill();

    boolean getAutoLine();

    boolean getAutoPict();

    boolean getDde();

    boolean getDefaultSize();

    boolean getDisabled();

    String getId();

    boolean getLocked();

    String getMacro();

    boolean getPrint();

    boolean getUiObject();

    boolean isSetAltText();

    boolean isSetAutoFill();

    boolean isSetAutoLine();

    boolean isSetAutoPict();

    boolean isSetDde();

    boolean isSetDefaultSize();

    boolean isSetDisabled();

    boolean isSetId();

    boolean isSetLocked();

    boolean isSetMacro();

    boolean isSetPrint();

    boolean isSetUiObject();

    void setAltText(String str);

    void setAnchor(CTObjectAnchor cTObjectAnchor);

    void setAutoFill(boolean z);

    void setAutoLine(boolean z);

    void setAutoPict(boolean z);

    void setDde(boolean z);

    void setDefaultSize(boolean z);

    void setDisabled(boolean z);

    void setId(String str);

    void setLocked(boolean z);

    void setMacro(String str);

    void setPrint(boolean z);

    void setUiObject(boolean z);

    void unsetAltText();

    void unsetAutoFill();

    void unsetAutoLine();

    void unsetAutoPict();

    void unsetDde();

    void unsetDefaultSize();

    void unsetDisabled();

    void unsetId();

    void unsetLocked();

    void unsetMacro();

    void unsetPrint();

    void unsetUiObject();

    STXstring xgetAltText();

    XmlBoolean xgetAutoFill();

    XmlBoolean xgetAutoLine();

    XmlBoolean xgetAutoPict();

    XmlBoolean xgetDde();

    XmlBoolean xgetDefaultSize();

    XmlBoolean xgetDisabled();

    STRelationshipId xgetId();

    XmlBoolean xgetLocked();

    STFormula xgetMacro();

    XmlBoolean xgetPrint();

    XmlBoolean xgetUiObject();

    void xsetAltText(STXstring sTXstring);

    void xsetAutoFill(XmlBoolean xmlBoolean);

    void xsetAutoLine(XmlBoolean xmlBoolean);

    void xsetAutoPict(XmlBoolean xmlBoolean);

    void xsetDde(XmlBoolean xmlBoolean);

    void xsetDefaultSize(XmlBoolean xmlBoolean);

    void xsetDisabled(XmlBoolean xmlBoolean);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetLocked(XmlBoolean xmlBoolean);

    void xsetMacro(STFormula sTFormula);

    void xsetPrint(XmlBoolean xmlBoolean);

    void xsetUiObject(XmlBoolean xmlBoolean);
}
