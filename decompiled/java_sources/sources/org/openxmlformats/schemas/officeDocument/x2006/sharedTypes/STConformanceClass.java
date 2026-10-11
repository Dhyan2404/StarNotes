package org.openxmlformats.schemas.officeDocument.x2006.sharedTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STConformanceClass extends XmlString {
    public static final SimpleTypeFactory<STConformanceClass> Factory;
    public static final int INT_STRICT = 1;
    public static final int INT_TRANSITIONAL = 2;
    public static final Enum STRICT;
    public static final Enum TRANSITIONAL;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_STRICT = 1;
        static final int INT_TRANSITIONAL = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("strict", 1), new Enum("transitional", 2)});

        private Enum(String str, int i) {
            super(str, i);
        }

        public static Enum forInt(int i) {
            return (Enum) table.forInt(i);
        }

        public static Enum forString(String str) {
            return (Enum) table.forString(str);
        }

        private Object readResolve() {
            return forInt(intValue());
        }
    }

    static {
        SimpleTypeFactory<STConformanceClass> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stconformanceclass9eddtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STRICT = Enum.forString("strict");
        TRANSITIONAL = Enum.forString("transitional");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
