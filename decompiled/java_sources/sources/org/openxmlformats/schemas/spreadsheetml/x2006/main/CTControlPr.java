package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTControlPr extends XmlObject {
    public static final DocumentFactory<CTControlPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTControlPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcontrolpr8f1etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTObjectAnchor addNewAnchor();

    String getAltText();

    CTObjectAnchor getAnchor();

    boolean getAutoFill();

    boolean getAutoLine();

    boolean getAutoPict();

    String getCf();

    boolean getDefaultSize();

    boolean getDisabled();

    String getId();

    String getLinkedCell();

    String getListFillRange();

    boolean getLocked();

    String getMacro();

    boolean getPrint();

    boolean getRecalcAlways();

    boolean getUiObject();

    boolean isSetAltText();

    boolean isSetAutoFill();

    boolean isSetAutoLine();

    boolean isSetAutoPict();

    boolean isSetCf();

    boolean isSetDefaultSize();

    boolean isSetDisabled();

    boolean isSetId();

    boolean isSetLinkedCell();

    boolean isSetListFillRange();

    boolean isSetLocked();

    boolean isSetMacro();

    boolean isSetPrint();

    boolean isSetRecalcAlways();

    boolean isSetUiObject();

    void setAltText(String str);

    void setAnchor(CTObjectAnchor cTObjectAnchor);

    void setAutoFill(boolean z);

    void setAutoLine(boolean z);

    void setAutoPict(boolean z);

    void setCf(String str);

    void setDefaultSize(boolean z);

    void setDisabled(boolean z);

    void setId(String str);

    void setLinkedCell(String str);

    void setListFillRange(String str);

    void setLocked(boolean z);

    void setMacro(String str);

    void setPrint(boolean z);

    void setRecalcAlways(boolean z);

    void setUiObject(boolean z);

    void unsetAltText();

    void unsetAutoFill();

    void unsetAutoLine();

    void unsetAutoPict();

    void unsetCf();

    void unsetDefaultSize();

    void unsetDisabled();

    void unsetId();

    void unsetLinkedCell();

    void unsetListFillRange();

    void unsetLocked();

    void unsetMacro();

    void unsetPrint();

    void unsetRecalcAlways();

    void unsetUiObject();

    STXstring xgetAltText();

    XmlBoolean xgetAutoFill();

    XmlBoolean xgetAutoLine();

    XmlBoolean xgetAutoPict();

    STXstring xgetCf();

    XmlBoolean xgetDefaultSize();

    XmlBoolean xgetDisabled();

    STRelationshipId xgetId();

    STFormula xgetLinkedCell();

    STFormula xgetListFillRange();

    XmlBoolean xgetLocked();

    STFormula xgetMacro();

    XmlBoolean xgetPrint();

    XmlBoolean xgetRecalcAlways();

    XmlBoolean xgetUiObject();

    void xsetAltText(STXstring sTXstring);

    void xsetAutoFill(XmlBoolean xmlBoolean);

    void xsetAutoLine(XmlBoolean xmlBoolean);

    void xsetAutoPict(XmlBoolean xmlBoolean);

    void xsetCf(STXstring sTXstring);

    void xsetDefaultSize(XmlBoolean xmlBoolean);

    void xsetDisabled(XmlBoolean xmlBoolean);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetLinkedCell(STFormula sTFormula);

    void xsetListFillRange(STFormula sTFormula);

    void xsetLocked(XmlBoolean xmlBoolean);

    void xsetMacro(STFormula sTFormula);

    void xsetPrint(XmlBoolean xmlBoolean);

    void xsetRecalcAlways(XmlBoolean xmlBoolean);

    void xsetUiObject(XmlBoolean xmlBoolean);
}
