package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STCredMethod extends XmlString {
    public static final SimpleTypeFactory<STCredMethod> Factory;
    public static final Enum INTEGRATED;
    public static final int INT_INTEGRATED = 1;
    public static final int INT_NONE = 2;
    public static final int INT_PROMPT = 4;
    public static final int INT_STORED = 3;
    public static final Enum NONE;
    public static final Enum PROMPT;
    public static final Enum STORED;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_INTEGRATED = 1;
        static final int INT_NONE = 2;
        static final int INT_PROMPT = 4;
        static final int INT_STORED = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("integrated", 1), new Enum("none", 2), new Enum("stored", 3), new Enum("prompt", 4)});

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
        SimpleTypeFactory<STCredMethod> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcredmethod00a8type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        INTEGRATED = Enum.forString("integrated");
        NONE = Enum.forString("none");
        STORED = Enum.forString("stored");
        PROMPT = Enum.forString("prompt");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
