package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGroupChr extends XmlObject {
    public static final DocumentFactory<CTGroupChr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupChr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgroupchra6c4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTGroupChrPr addNewGroupChrPr();

    CTOMathArg getE();

    CTGroupChrPr getGroupChrPr();

    boolean isSetGroupChrPr();

    void setE(CTOMathArg cTOMathArg);

    void setGroupChrPr(CTGroupChrPr cTGroupChrPr);

    void unsetGroupChrPr();
}
