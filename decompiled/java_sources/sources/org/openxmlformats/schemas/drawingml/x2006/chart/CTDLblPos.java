package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STDLblPos;

/* loaded from: classes14.dex */
public interface CTDLblPos extends XmlObject {
    public static final DocumentFactory<CTDLblPos> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDLblPos> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdlblpos9ce4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDLblPos.Enum getVal();

    void setVal(STDLblPos.Enum r1);

    STDLblPos xgetVal();

    void xsetVal(STDLblPos sTDLblPos);
}
