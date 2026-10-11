package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBox extends XmlObject {
    public static final DocumentFactory<CTBox> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBox> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbox7a31type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBoxPr addNewBoxPr();

    CTOMathArg addNewE();

    CTBoxPr getBoxPr();

    CTOMathArg getE();

    boolean isSetBoxPr();

    void setBoxPr(CTBoxPr cTBoxPr);

    void setE(CTOMathArg cTOMathArg);

    void unsetBoxPr();
}
