package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAlignH extends XmlToken {
    public static final Enum CENTER;
    public static final SimpleTypeFactory<STAlignH> Factory;
    public static final Enum INSIDE;
    public static final int INT_CENTER = 3;
    public static final int INT_INSIDE = 4;
    public static final int INT_LEFT = 1;
    public static final int INT_OUTSIDE = 5;
    public static final int INT_RIGHT = 2;
    public static final Enum LEFT;
    public static final Enum OUTSIDE;
    public static final Enum RIGHT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CENTER = 3;
        static final int INT_INSIDE = 4;
        static final int INT_LEFT = 1;
        static final int INT_OUTSIDE = 5;
        static final int INT_RIGHT = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("left", 1), new Enum(gon.f71288n0, 2), new Enum("center", 3), new Enum("inside", 4), new Enum(gon.f71278e0, 5)});

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
        SimpleTypeFactory<STAlignH> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stalignh768ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        LEFT = Enum.forString("left");
        RIGHT = Enum.forString(gon.f71288n0);
        CENTER = Enum.forString("center");
        INSIDE = Enum.forString("inside");
        OUTSIDE = Enum.forString(gon.f71278e0);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
