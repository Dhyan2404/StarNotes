package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STExtrusionType extends XmlString {
    public static final SimpleTypeFactory<STExtrusionType> Factory;
    public static final int INT_PARALLEL = 2;
    public static final int INT_PERSPECTIVE = 1;
    public static final Enum PARALLEL;
    public static final Enum PERSPECTIVE;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_PARALLEL = 2;
        static final int INT_PERSPECTIVE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("perspective", 1), new Enum("parallel", 2)});

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
        SimpleTypeFactory<STExtrusionType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stextrusiontypef65ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PERSPECTIVE = Enum.forString("perspective");
        PARALLEL = Enum.forString("parallel");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
