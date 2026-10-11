package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STUnsignedDecimalNumber;

/* loaded from: classes16.dex */
public interface STPixelsMeasure extends STUnsignedDecimalNumber {
    public static final SimpleTypeFactory<STPixelsMeasure> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STPixelsMeasure> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpixelsmeasurea891type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
