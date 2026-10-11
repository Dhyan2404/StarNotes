package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STSizeRepresents;

/* loaded from: classes14.dex */
public interface CTSizeRepresents extends XmlObject {
    public static final DocumentFactory<CTSizeRepresents> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSizeRepresents> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsizerepresentsae50type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STSizeRepresents.Enum getVal();

    boolean isSetVal();

    void setVal(STSizeRepresents.Enum r1);

    void unsetVal();

    STSizeRepresents xgetVal();

    void xsetVal(STSizeRepresents sTSizeRepresents);
}
