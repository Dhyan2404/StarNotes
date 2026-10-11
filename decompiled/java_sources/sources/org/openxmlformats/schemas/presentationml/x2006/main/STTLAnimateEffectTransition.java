package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLAnimateEffectTransition extends XmlToken {
    public static final SimpleTypeFactory<STTLAnimateEffectTransition> Factory;

    /* renamed from: IN */
    public static final Enum f115775IN;
    public static final int INT_IN = 1;
    public static final int INT_NONE = 3;
    public static final int INT_OUT = 2;
    public static final Enum NONE;
    public static final Enum OUT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_IN = 1;
        static final int INT_NONE = 3;
        static final int INT_OUT = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("in", 1), new Enum("out", 2), new Enum("none", 3)});

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
        SimpleTypeFactory<STTLAnimateEffectTransition> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlanimateeffecttransition8cf0type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115775IN = Enum.forString("in");
        OUT = Enum.forString("out");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
