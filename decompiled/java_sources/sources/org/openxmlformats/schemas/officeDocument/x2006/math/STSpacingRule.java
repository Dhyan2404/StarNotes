package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STSpacingRule extends XmlInteger {
    public static final SimpleTypeFactory<STSpacingRule> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STSpacingRule> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stspacingrule00adtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    int getIntValue();

    void setIntValue(int i);
}
