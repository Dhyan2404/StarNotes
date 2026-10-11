package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTileFlipMode extends XmlToken {
    public static final SimpleTypeFactory<STTileFlipMode> Factory;
    public static final int INT_NONE = 1;
    public static final int INT_X = 2;
    public static final int INT_XY = 4;
    public static final int INT_Y = 3;
    public static final Enum NONE;

    /* renamed from: X */
    public static final Enum f115747X;

    /* renamed from: XY */
    public static final Enum f115748XY;

    /* renamed from: Y */
    public static final Enum f115749Y;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_NONE = 1;
        static final int INT_X = 2;
        static final int INT_XY = 4;
        static final int INT_Y = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("x", 2), new Enum("y", 3), new Enum("xy", 4)});

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
        SimpleTypeFactory<STTileFlipMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttileflipmode2429type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        f115747X = Enum.forString("x");
        f115749Y = Enum.forString("y");
        f115748XY = Enum.forString("xy");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
