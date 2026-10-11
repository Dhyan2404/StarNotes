package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTShape extends XmlObject {
    public static final DocumentFactory<CTShape> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTShape> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctshapebd1atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAdjLst addNewAdjLst();

    CTOfficeArtExtensionList addNewExtLst();

    CTAdjLst getAdjLst();

    String getBlip();

    boolean getBlipPhldr();

    CTOfficeArtExtensionList getExtLst();

    boolean getHideGeom();

    boolean getLkTxEntry();

    double getRot();

    String getType();

    int getZOrderOff();

    boolean isSetAdjLst();

    boolean isSetBlip();

    boolean isSetBlipPhldr();

    boolean isSetExtLst();

    boolean isSetHideGeom();

    boolean isSetLkTxEntry();

    boolean isSetRot();

    boolean isSetType();

    boolean isSetZOrderOff();

    void setAdjLst(CTAdjLst cTAdjLst);

    void setBlip(String str);

    void setBlipPhldr(boolean z);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setHideGeom(boolean z);

    void setLkTxEntry(boolean z);

    void setRot(double d);

    void setType(String str);

    void setZOrderOff(int i);

    void unsetAdjLst();

    void unsetBlip();

    void unsetBlipPhldr();

    void unsetExtLst();

    void unsetHideGeom();

    void unsetLkTxEntry();

    void unsetRot();

    void unsetType();

    void unsetZOrderOff();

    STRelationshipId xgetBlip();

    XmlBoolean xgetBlipPhldr();

    XmlBoolean xgetHideGeom();

    XmlBoolean xgetLkTxEntry();

    XmlDouble xgetRot();

    STLayoutShapeType xgetType();

    XmlInt xgetZOrderOff();

    void xsetBlip(STRelationshipId sTRelationshipId);

    void xsetBlipPhldr(XmlBoolean xmlBoolean);

    void xsetHideGeom(XmlBoolean xmlBoolean);

    void xsetLkTxEntry(XmlBoolean xmlBoolean);

    void xsetRot(XmlDouble xmlDouble);

    void xsetType(STLayoutShapeType sTLayoutShapeType);

    void xsetZOrderOff(XmlInt xmlInt);
}
