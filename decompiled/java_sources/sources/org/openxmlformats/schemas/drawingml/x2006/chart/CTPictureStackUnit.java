package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPictureStackUnit extends XmlObject {
    public static final DocumentFactory<CTPictureStackUnit> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPictureStackUnit> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpicturestackunitd9aetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    double getVal();

    void setVal(double d);

    STPictureStackUnit xgetVal();

    void xsetVal(STPictureStackUnit sTPictureStackUnit);
}
