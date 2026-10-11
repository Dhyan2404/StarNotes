package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPositivePercentage extends XmlObject {
    public static final DocumentFactory<CTPositivePercentage> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPositivePercentage> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpositivepercentage2f8etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    void setVal(Object obj);

    STPositivePercentage xgetVal();

    void xsetVal(STPositivePercentage sTPositivePercentage);
}
