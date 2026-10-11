package org.openxmlformats.schemas.officeDocument.x2006.math;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STScript extends XmlString {
    public static final Enum DOUBLE_STRUCK;
    public static final Enum FRAKTUR;
    public static final SimpleTypeFactory<STScript> Factory;
    public static final int INT_DOUBLE_STRUCK = 4;
    public static final int INT_FRAKTUR = 3;
    public static final int INT_MONOSPACE = 6;
    public static final int INT_ROMAN = 1;
    public static final int INT_SANS_SERIF = 5;
    public static final int INT_SCRIPT = 2;
    public static final Enum MONOSPACE;
    public static final Enum ROMAN;
    public static final Enum SANS_SERIF;
    public static final Enum SCRIPT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DOUBLE_STRUCK = 4;
        static final int INT_FRAKTUR = 3;
        static final int INT_MONOSPACE = 6;
        static final int INT_ROMAN = 1;
        static final int INT_SANS_SERIF = 5;
        static final int INT_SCRIPT = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("roman", 1), new Enum(Constants.ELEMNAME_SCRIPT_STRING, 2), new Enum("fraktur", 3), new Enum("double-struck", 4), new Enum("sans-serif", 5), new Enum("monospace", 6)});

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
        SimpleTypeFactory<STScript> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stscript4637type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ROMAN = Enum.forString("roman");
        SCRIPT = Enum.forString(Constants.ELEMNAME_SCRIPT_STRING);
        FRAKTUR = Enum.forString("fraktur");
        DOUBLE_STRUCK = Enum.forString("double-struck");
        SANS_SERIF = Enum.forString("sans-serif");
        MONOSPACE = Enum.forString("monospace");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
