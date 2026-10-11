package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTRPrDefault extends XmlObject {
    public static final DocumentFactory<CTRPrDefault> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRPrDefault> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrprdefault5ebbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRPr addNewRPr();

    CTRPr getRPr();

    boolean isSetRPr();

    void setRPr(CTRPr cTRPr);

    void unsetRPr();
}
