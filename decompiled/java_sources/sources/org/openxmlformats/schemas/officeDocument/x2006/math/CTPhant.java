package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPhant extends XmlObject {
    public static final DocumentFactory<CTPhant> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPhant> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctphant234dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTPhantPr addNewPhantPr();

    CTOMathArg getE();

    CTPhantPr getPhantPr();

    boolean isSetPhantPr();

    void setE(CTOMathArg cTOMathArg);

    void setPhantPr(CTPhantPr cTPhantPr);

    void unsetPhantPr();
}
