package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocumentBase extends XmlObject {
    public static final DocumentFactory<CTDocumentBase> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocumentBase> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocumentbasedf5ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBackground addNewBackground();

    CTBackground getBackground();

    boolean isSetBackground();

    void setBackground(CTBackground cTBackground);

    void unsetBackground();
}
