package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocPart extends XmlObject {
    public static final DocumentFactory<CTDocPart> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPart> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpart7f27type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBody addNewDocPartBody();

    CTDocPartPr addNewDocPartPr();

    CTBody getDocPartBody();

    CTDocPartPr getDocPartPr();

    boolean isSetDocPartBody();

    boolean isSetDocPartPr();

    void setDocPartBody(CTBody cTBody);

    void setDocPartPr(CTDocPartPr cTDocPartPr);

    void unsetDocPartBody();

    void unsetDocPartPr();
}
