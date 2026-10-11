package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STPageBorderZOrder extends XmlString {
    public static final Enum BACK;
    public static final Enum FRONT;
    public static final SimpleTypeFactory<STPageBorderZOrder> Factory;
    public static final int INT_BACK = 2;
    public static final int INT_FRONT = 1;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BACK = 2;
        static final int INT_FRONT = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("front", 1), new Enum("back", 2)});

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
        SimpleTypeFactory<STPageBorderZOrder> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpageborderzordereec9type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        FRONT = Enum.forString("front");
        BACK = Enum.forString("back");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
