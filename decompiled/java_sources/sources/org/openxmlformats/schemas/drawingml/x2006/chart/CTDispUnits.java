package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTDispUnits extends XmlObject {
    public static final DocumentFactory<CTDispUnits> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDispUnits> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdispunitsaa99type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBuiltInUnit addNewBuiltInUnit();

    CTDouble addNewCustUnit();

    CTDispUnitsLbl addNewDispUnitsLbl();

    CTExtensionList addNewExtLst();

    CTBuiltInUnit getBuiltInUnit();

    CTDouble getCustUnit();

    CTDispUnitsLbl getDispUnitsLbl();

    CTExtensionList getExtLst();

    boolean isSetBuiltInUnit();

    boolean isSetCustUnit();

    boolean isSetDispUnitsLbl();

    boolean isSetExtLst();

    void setBuiltInUnit(CTBuiltInUnit cTBuiltInUnit);

    void setCustUnit(CTDouble cTDouble);

    void setDispUnitsLbl(CTDispUnitsLbl cTDispUnitsLbl);

    void setExtLst(CTExtensionList cTExtensionList);

    void unsetBuiltInUnit();

    void unsetCustUnit();

    void unsetDispUnitsLbl();

    void unsetExtLst();
}
