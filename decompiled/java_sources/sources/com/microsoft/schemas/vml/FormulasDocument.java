package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FormulasDocument extends XmlObject {
    public static final DocumentFactory<FormulasDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FormulasDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "formulaseedfdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFormulas addNewFormulas();

    CTFormulas getFormulas();

    void setFormulas(CTFormulas cTFormulas);
}
