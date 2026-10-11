package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STPitch extends XmlString {
    public static final Enum DEFAULT;
    public static final Enum FIXED;
    public static final SimpleTypeFactory<STPitch> Factory;
    public static final int INT_DEFAULT = 3;
    public static final int INT_FIXED = 1;
    public static final int INT_VARIABLE = 2;
    public static final Enum VARIABLE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DEFAULT = 3;
        static final int INT_FIXED = 1;
        static final int INT_VARIABLE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("fixed", 1), new Enum(Constants.ELEMNAME_VARIABLE_STRING, 2), new Enum("default", 3)});

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
        SimpleTypeFactory<STPitch> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpitch0ea2type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        FIXED = Enum.forString("fixed");
        VARIABLE = Enum.forString(Constants.ELEMNAME_VARIABLE_STRING);
        DEFAULT = Enum.forString("default");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
