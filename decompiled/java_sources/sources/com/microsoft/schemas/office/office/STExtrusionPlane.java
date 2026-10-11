package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STExtrusionPlane extends XmlString {
    public static final SimpleTypeFactory<STExtrusionPlane> Factory;
    public static final int INT_XY = 1;
    public static final int INT_YZ = 3;
    public static final int INT_ZX = 2;

    /* renamed from: XY */
    public static final Enum f39538XY;

    /* renamed from: YZ */
    public static final Enum f39539YZ;

    /* renamed from: ZX */
    public static final Enum f39540ZX;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_XY = 1;
        static final int INT_YZ = 3;
        static final int INT_ZX = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("XY", 1), new Enum("ZX", 2), new Enum("YZ", 3)});

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
        SimpleTypeFactory<STExtrusionPlane> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stextrusionplanebd36type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f39538XY = Enum.forString("XY");
        f39540ZX = Enum.forString("ZX");
        f39539YZ = Enum.forString("YZ");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
