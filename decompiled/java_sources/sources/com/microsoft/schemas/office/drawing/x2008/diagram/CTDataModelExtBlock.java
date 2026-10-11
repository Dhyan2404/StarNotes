package com.microsoft.schemas.office.drawing.x2008.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTDataModelExtBlock extends XmlObject {
    public static final DocumentFactory<CTDataModelExtBlock> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDataModelExtBlock> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdatamodelextblock49cctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getMinVer();

    String getRelId();

    boolean isSetMinVer();

    boolean isSetRelId();

    void setMinVer(String str);

    void setRelId(String str);

    void unsetMinVer();

    void unsetRelId();

    XmlAnyURI xgetMinVer();

    XmlString xgetRelId();

    void xsetMinVer(XmlAnyURI xmlAnyURI);

    void xsetRelId(XmlString xmlString);
}
