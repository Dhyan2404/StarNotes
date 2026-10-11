package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLAnimateMotionPathEditMode extends XmlToken {
    public static final Enum FIXED;
    public static final SimpleTypeFactory<STTLAnimateMotionPathEditMode> Factory;
    public static final int INT_FIXED = 2;
    public static final int INT_RELATIVE = 1;
    public static final Enum RELATIVE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FIXED = 2;
        static final int INT_RELATIVE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("relative", 1), new Enum("fixed", 2)});

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
        SimpleTypeFactory<STTLAnimateMotionPathEditMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlanimatemotionpatheditmode718etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        RELATIVE = Enum.forString("relative");
        FIXED = Enum.forString("fixed");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
