package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBorderBox extends XmlObject {
    public static final DocumentFactory<CTBorderBox> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBorderBox> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctborderbox15bdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBorderBoxPr addNewBorderBoxPr();

    CTOMathArg addNewE();

    CTBorderBoxPr getBorderBoxPr();

    CTOMathArg getE();

    boolean isSetBorderBoxPr();

    void setBorderBoxPr(CTBorderBoxPr cTBorderBoxPr);

    void setE(CTOMathArg cTOMathArg);

    void unsetBorderBoxPr();
}
