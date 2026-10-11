package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STEm extends XmlString {
    public static final Enum CIRCLE;
    public static final Enum COMMA;
    public static final Enum DOT;
    public static final SimpleTypeFactory<STEm> Factory;
    public static final int INT_CIRCLE = 4;
    public static final int INT_COMMA = 3;
    public static final int INT_DOT = 2;
    public static final int INT_NONE = 1;
    public static final int INT_UNDER_DOT = 5;
    public static final Enum NONE;
    public static final Enum UNDER_DOT;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CIRCLE = 4;
        static final int INT_COMMA = 3;
        static final int INT_DOT = 2;
        static final int INT_NONE = 1;
        static final int INT_UNDER_DOT = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum(gon.f71308x0, 2), new Enum("comma", 3), new Enum("circle", 4), new Enum("underDot", 5)});

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
        SimpleTypeFactory<STEm> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stem5e70type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        DOT = Enum.forString(gon.f71308x0);
        COMMA = Enum.forString("comma");
        CIRCLE = Enum.forString("circle");
        UNDER_DOT = Enum.forString("underDot");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
