package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface MathPrDocument extends XmlObject {
    public static final DocumentFactory<MathPrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MathPrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "mathprd7b4doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMathPr addNewMathPr();

    CTMathPr getMathPr();

    void setMathPr(CTMathPr cTMathPr);
}
