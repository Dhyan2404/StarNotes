package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STSqref extends XmlAnySimpleType {
    public static final SimpleTypeFactory<STSqref> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<STSqref> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsqrefb044type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    List getListValue();

    void setListValue(List<?> list);

    List xgetListValue();
}
