package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STTickLblPos;

/* loaded from: classes14.dex */
public interface CTTickLblPos extends XmlObject {
    public static final DocumentFactory<CTTickLblPos> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTickLblPos> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctticklblposff61type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTickLblPos.Enum getVal();

    boolean isSetVal();

    void setVal(STTickLblPos.Enum r1);

    void unsetVal();

    STTickLblPos xgetVal();

    void xsetVal(STTickLblPos sTTickLblPos);
}
