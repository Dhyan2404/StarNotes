package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STSplitterBarState extends XmlToken {
    public static final SimpleTypeFactory<STSplitterBarState> Factory;
    public static final int INT_MAXIMIZED = 3;
    public static final int INT_MINIMIZED = 1;
    public static final int INT_RESTORED = 2;
    public static final Enum MAXIMIZED;
    public static final Enum MINIMIZED;
    public static final Enum RESTORED;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_MAXIMIZED = 3;
        static final int INT_MINIMIZED = 1;
        static final int INT_RESTORED = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("minimized", 1), new Enum("restored", 2), new Enum("maximized", 3)});

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
        SimpleTypeFactory<STSplitterBarState> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsplitterbarstate4750type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        MINIMIZED = Enum.forString("minimized");
        RESTORED = Enum.forString("restored");
        MAXIMIZED = Enum.forString("maximized");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
