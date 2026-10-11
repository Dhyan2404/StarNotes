package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTGlossaryDocument1 extends CTDocumentBase {
    public static final DocumentFactory<CTGlossaryDocument1> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGlossaryDocument1> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctglossarydocument922ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDocParts addNewDocParts();

    CTDocParts getDocParts();

    boolean isSetDocParts();

    void setDocParts(CTDocParts cTDocParts);

    void unsetDocParts();
}
