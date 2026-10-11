package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STError extends XmlString {
    public static final SimpleTypeFactory<STError> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STError> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sterrorcb77type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }
}
