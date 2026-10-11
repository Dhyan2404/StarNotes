package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STMailMergeDataType extends XmlString {
    public static final SimpleTypeFactory<STMailMergeDataType> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STMailMergeDataType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmailmergedatatype729dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
