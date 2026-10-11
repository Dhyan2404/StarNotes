package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STPictureFormat;

/* loaded from: classes14.dex */
public interface CTPictureFormat extends XmlObject {
    public static final DocumentFactory<CTPictureFormat> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPictureFormat> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpictureformat1771type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STPictureFormat.Enum getVal();

    void setVal(STPictureFormat.Enum r1);

    STPictureFormat xgetVal();

    void xsetVal(STPictureFormat sTPictureFormat);
}
