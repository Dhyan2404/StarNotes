package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STFontFamily extends XmlString {
    public static final Enum AUTO;
    public static final Enum DECORATIVE;
    public static final SimpleTypeFactory<STFontFamily> Factory;
    public static final int INT_AUTO = 6;
    public static final int INT_DECORATIVE = 1;
    public static final int INT_MODERN = 2;
    public static final int INT_ROMAN = 3;
    public static final int INT_SCRIPT = 4;
    public static final int INT_SWISS = 5;
    public static final Enum MODERN;
    public static final Enum ROMAN;
    public static final Enum SCRIPT;
    public static final Enum SWISS;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO = 6;
        static final int INT_DECORATIVE = 1;
        static final int INT_MODERN = 2;
        static final int INT_ROMAN = 3;
        static final int INT_SCRIPT = 4;
        static final int INT_SWISS = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("decorative", 1), new Enum("modern", 2), new Enum("roman", 3), new Enum(Constants.ELEMNAME_SCRIPT_STRING, 4), new Enum("swiss", 5), new Enum("auto", 6)});

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
        SimpleTypeFactory<STFontFamily> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfontfamily4b65type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DECORATIVE = Enum.forString("decorative");
        MODERN = Enum.forString("modern");
        ROMAN = Enum.forString("roman");
        SCRIPT = Enum.forString(Constants.ELEMNAME_SCRIPT_STRING);
        SWISS = Enum.forString("swiss");
        AUTO = Enum.forString("auto");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
