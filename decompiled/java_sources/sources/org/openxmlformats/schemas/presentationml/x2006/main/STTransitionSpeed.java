package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTransitionSpeed extends XmlToken {
    public static final Enum FAST;
    public static final SimpleTypeFactory<STTransitionSpeed> Factory;
    public static final int INT_FAST = 3;
    public static final int INT_MED = 2;
    public static final int INT_SLOW = 1;
    public static final Enum MED;
    public static final Enum SLOW;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FAST = 3;
        static final int INT_MED = 2;
        static final int INT_SLOW = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("slow", 1), new Enum("med", 2), new Enum("fast", 3)});

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
        SimpleTypeFactory<STTransitionSpeed> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttransitionspeedc6adtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SLOW = Enum.forString("slow");
        MED = Enum.forString("med");
        FAST = Enum.forString("fast");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
