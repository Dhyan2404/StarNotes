package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STInteger2 extends XmlInteger {
    public static final SimpleTypeFactory<STInteger2> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STInteger2> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stinteger23beetype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    int getIntValue();

    void setIntValue(int i);
}
