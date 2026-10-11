package org.openxmlformats.schemas.drawingml.x2006.main;

import com.sunia.HTREnginev2.o6o;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBlendMode extends XmlToken {
    public static final Enum DARKEN;
    public static final SimpleTypeFactory<STBlendMode> Factory;
    public static final int INT_DARKEN = 4;
    public static final int INT_LIGHTEN = 5;
    public static final int INT_MULT = 2;
    public static final int INT_OVER = 1;
    public static final int INT_SCREEN = 3;
    public static final Enum LIGHTEN;
    public static final Enum MULT;
    public static final Enum OVER;
    public static final Enum SCREEN;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DARKEN = 4;
        static final int INT_LIGHTEN = 5;
        static final int INT_MULT = 2;
        static final int INT_OVER = 1;
        static final int INT_SCREEN = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(o6o.f79402l, 1), new Enum("mult", 2), new Enum("screen", 3), new Enum("darken", 4), new Enum("lighten", 5)});

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
        SimpleTypeFactory<STBlendMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stblendmode3cf5type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        OVER = Enum.forString(o6o.f79402l);
        MULT = Enum.forString("mult");
        SCREEN = Enum.forString("screen");
        DARKEN = Enum.forString("darken");
        LIGHTEN = Enum.forString("lighten");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
