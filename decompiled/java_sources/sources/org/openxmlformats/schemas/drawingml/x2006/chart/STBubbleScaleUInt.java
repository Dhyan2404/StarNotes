package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBubbleScaleUInt extends XmlUnsignedInt {
    public static final SimpleTypeFactory<STBubbleScaleUInt> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STBubbleScaleUInt> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbubblescaleuintf8fetype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    int getIntValue();

    void setIntValue(int i);
}
