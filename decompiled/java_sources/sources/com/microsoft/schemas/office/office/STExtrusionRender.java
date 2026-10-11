package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STExtrusionRender extends XmlString {
    public static final Enum BOUNDING_CUBE;
    public static final SimpleTypeFactory<STExtrusionRender> Factory;
    public static final int INT_BOUNDING_CUBE = 3;
    public static final int INT_SOLID = 1;
    public static final int INT_WIRE_FRAME = 2;
    public static final Enum SOLID;
    public static final Enum WIRE_FRAME;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOUNDING_CUBE = 3;
        static final int INT_SOLID = 1;
        static final int INT_WIRE_FRAME = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("solid", 1), new Enum("wireFrame", 2), new Enum("boundingCube", 3)});

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
        SimpleTypeFactory<STExtrusionRender> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stextrusionrenderd3b8type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SOLID = Enum.forString("solid");
        WIRE_FRAME = Enum.forString("wireFrame");
        BOUNDING_CUBE = Enum.forString("boundingCube");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
