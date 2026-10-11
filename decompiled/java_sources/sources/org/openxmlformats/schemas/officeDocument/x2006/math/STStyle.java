package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STStyle extends XmlString {

    /* renamed from: B */
    public static final Enum f115758B;

    /* renamed from: BI */
    public static final Enum f115759BI;
    public static final SimpleTypeFactory<STStyle> Factory;

    /* renamed from: I */
    public static final Enum f115760I;
    public static final int INT_B = 2;
    public static final int INT_BI = 4;
    public static final int INT_I = 3;
    public static final int INT_P = 1;

    /* renamed from: P */
    public static final Enum f115761P;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 2;
        static final int INT_BI = 4;
        static final int INT_I = 3;
        static final int INT_P = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("p", 1), new Enum("b", 2), new Enum("i", 3), new Enum("bi", 4)});

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
        SimpleTypeFactory<STStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststyle695btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115761P = Enum.forString("p");
        f115758B = Enum.forString("b");
        f115760I = Enum.forString("i");
        f115759BI = Enum.forString("bi");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
