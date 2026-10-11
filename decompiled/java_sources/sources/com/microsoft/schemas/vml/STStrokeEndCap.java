package com.microsoft.schemas.vml;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STStrokeEndCap extends XmlString {
    public static final Enum FLAT;
    public static final SimpleTypeFactory<STStrokeEndCap> Factory;
    public static final int INT_FLAT = 1;
    public static final int INT_ROUND = 3;
    public static final int INT_SQUARE = 2;
    public static final Enum ROUND;
    public static final Enum SQUARE;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FLAT = 1;
        static final int INT_ROUND = 3;
        static final int INT_SQUARE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("flat", 1), new Enum("square", 2), new Enum(Keywords.FUNC_ROUND_STRING, 3)});

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
        SimpleTypeFactory<STStrokeEndCap> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststrokeendcap681dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        FLAT = Enum.forString("flat");
        SQUARE = Enum.forString("square");
        ROUND = Enum.forString(Keywords.FUNC_ROUND_STRING);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
