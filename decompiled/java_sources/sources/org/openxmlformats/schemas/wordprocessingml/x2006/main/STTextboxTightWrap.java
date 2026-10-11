package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STTextboxTightWrap extends XmlString {
    public static final Enum ALL_LINES;
    public static final Enum FIRST_AND_LAST_LINE;
    public static final Enum FIRST_LINE_ONLY;
    public static final SimpleTypeFactory<STTextboxTightWrap> Factory;
    public static final int INT_ALL_LINES = 2;
    public static final int INT_FIRST_AND_LAST_LINE = 3;
    public static final int INT_FIRST_LINE_ONLY = 4;
    public static final int INT_LAST_LINE_ONLY = 5;
    public static final int INT_NONE = 1;
    public static final Enum LAST_LINE_ONLY;
    public static final Enum NONE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL_LINES = 2;
        static final int INT_FIRST_AND_LAST_LINE = 3;
        static final int INT_FIRST_LINE_ONLY = 4;
        static final int INT_LAST_LINE_ONLY = 5;
        static final int INT_NONE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("allLines", 2), new Enum("firstAndLastLine", 3), new Enum("firstLineOnly", 4), new Enum("lastLineOnly", 5)});

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
        SimpleTypeFactory<STTextboxTightWrap> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttextboxtightwrap8c6etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        ALL_LINES = Enum.forString("allLines");
        FIRST_AND_LAST_LINE = Enum.forString("firstAndLastLine");
        FIRST_LINE_ONLY = Enum.forString("firstLineOnly");
        LAST_LINE_ONLY = Enum.forString("lastLineOnly");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
