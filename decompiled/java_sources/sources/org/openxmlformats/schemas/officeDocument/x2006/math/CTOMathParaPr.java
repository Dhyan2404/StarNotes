package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTOMathParaPr extends XmlObject {
    public static final DocumentFactory<CTOMathParaPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOMathParaPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctomathparapr8d43type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathJc addNewJc();

    CTOMathJc getJc();

    boolean isSetJc();

    void setJc(CTOMathJc cTOMathJc);

    void unsetJc();
}
