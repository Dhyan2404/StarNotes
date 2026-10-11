package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLParaBuildType extends XmlToken {
    public static final Enum ALL_AT_ONCE;
    public static final Enum CUST;
    public static final SimpleTypeFactory<STTLParaBuildType> Factory;
    public static final int INT_ALL_AT_ONCE = 1;
    public static final int INT_CUST = 3;
    public static final int INT_P = 2;
    public static final int INT_WHOLE = 4;

    /* renamed from: P */
    public static final Enum f115779P;
    public static final Enum WHOLE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL_AT_ONCE = 1;
        static final int INT_CUST = 3;
        static final int INT_P = 2;
        static final int INT_WHOLE = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("allAtOnce", 1), new Enum("p", 2), new Enum("cust", 3), new Enum("whole", 4)});

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
        SimpleTypeFactory<STTLParaBuildType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlparabuildtype188ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ALL_AT_ONCE = Enum.forString("allAtOnce");
        f115779P = Enum.forString("p");
        CUST = Enum.forString("cust");
        WHOLE = Enum.forString("whole");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
