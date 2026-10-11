package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STCellSpan extends XmlString {
    public static final SimpleTypeFactory<STCellSpan> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STCellSpan> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcellspanf3a5type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
