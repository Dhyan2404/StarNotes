package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTextColumnCount extends XmlInt {
    public static final SimpleTypeFactory<STTextColumnCount> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STTextColumnCount> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttextcolumncount490dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
