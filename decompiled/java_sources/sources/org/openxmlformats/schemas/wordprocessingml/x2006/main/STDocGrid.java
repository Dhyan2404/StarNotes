package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STDocGrid extends XmlString {
    public static final Enum DEFAULT;
    public static final SimpleTypeFactory<STDocGrid> Factory;
    public static final int INT_DEFAULT = 1;
    public static final int INT_LINES = 2;
    public static final int INT_LINES_AND_CHARS = 3;
    public static final int INT_SNAP_TO_CHARS = 4;
    public static final Enum LINES;
    public static final Enum LINES_AND_CHARS;
    public static final Enum SNAP_TO_CHARS;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DEFAULT = 1;
        static final int INT_LINES = 2;
        static final int INT_LINES_AND_CHARS = 3;
        static final int INT_SNAP_TO_CHARS = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("default", 1), new Enum("lines", 2), new Enum("linesAndChars", 3), new Enum("snapToChars", 4)});

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
        SimpleTypeFactory<STDocGrid> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdocgrid1cc4type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DEFAULT = Enum.forString("default");
        LINES = Enum.forString("lines");
        LINES_AND_CHARS = Enum.forString("linesAndChars");
        SNAP_TO_CHARS = Enum.forString("snapToChars");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
