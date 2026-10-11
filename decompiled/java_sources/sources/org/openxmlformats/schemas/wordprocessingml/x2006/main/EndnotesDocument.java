package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface EndnotesDocument extends XmlObject {
    public static final DocumentFactory<EndnotesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<EndnotesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "endnotes960edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEndnotes addNewEndnotes();

    CTEndnotes getEndnotes();

    void setEndnotes(CTEndnotes cTEndnotes);
}
