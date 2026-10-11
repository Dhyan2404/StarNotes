package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTextBulletSizeDecimal extends STPercentageDecimal {
    public static final SimpleTypeFactory<STTextBulletSizeDecimal> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STTextBulletSizeDecimal> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttextbulletsizedecimal2322type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
