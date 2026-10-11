package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface GlossaryDocumentDocument1 extends XmlObject {
    public static final DocumentFactory<GlossaryDocumentDocument1> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<GlossaryDocumentDocument1> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "glossarydocument6d5bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGlossaryDocument1 addNewGlossaryDocument();

    CTGlossaryDocument1 getGlossaryDocument();

    void setGlossaryDocument(CTGlossaryDocument1 cTGlossaryDocument1);
}
