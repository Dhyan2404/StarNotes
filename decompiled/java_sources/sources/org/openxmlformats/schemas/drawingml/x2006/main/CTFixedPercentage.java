package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTFixedPercentage extends XmlObject {
    public static final DocumentFactory<CTFixedPercentage> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFixedPercentage> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfixedpercentagea2dftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    void setVal(Object obj);

    STFixedPercentage xgetVal();

    void xsetVal(STFixedPercentage sTFixedPercentage);
}
