package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBoolOperator extends XmlToken {
    public static final Enum EQU;
    public static final SimpleTypeFactory<STBoolOperator> Factory;
    public static final Enum GTE;
    public static final int INT_EQU = 2;
    public static final int INT_GTE = 3;
    public static final int INT_LTE = 4;
    public static final int INT_NONE = 1;
    public static final Enum LTE;
    public static final Enum NONE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EQU = 2;
        static final int INT_GTE = 3;
        static final int INT_LTE = 4;
        static final int INT_NONE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("equ", 2), new Enum("gte", 3), new Enum("lte", 4)});

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
        SimpleTypeFactory<STBoolOperator> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbooloperator0d33type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        EQU = Enum.forString("equ");
        GTE = Enum.forString("gte");
        LTE = Enum.forString("lte");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
