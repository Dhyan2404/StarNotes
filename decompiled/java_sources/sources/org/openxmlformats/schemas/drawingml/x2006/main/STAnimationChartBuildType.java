package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAnimationChartBuildType extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STAnimationChartBuildType> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STAnimationChartBuildType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stanimationchartbuildtype75cftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    Object getObjectValue();

    SchemaType instanceType();

    void setObjectValue(Object obj);
}
