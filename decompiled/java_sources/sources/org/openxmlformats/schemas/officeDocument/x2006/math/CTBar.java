package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBar extends XmlObject {
    public static final DocumentFactory<CTBar> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBar> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbareee9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBarPr addNewBarPr();

    CTOMathArg addNewE();

    CTBarPr getBarPr();

    CTOMathArg getE();

    boolean isSetBarPr();

    void setBarPr(CTBarPr cTBarPr);

    void setE(CTOMathArg cTOMathArg);

    void unsetBarPr();
}
