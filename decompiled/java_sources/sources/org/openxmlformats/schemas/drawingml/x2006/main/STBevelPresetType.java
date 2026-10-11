package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBevelPresetType extends XmlToken {
    public static final Enum ANGLE;
    public static final Enum ART_DECO;
    public static final Enum CIRCLE;
    public static final Enum CONVEX;
    public static final Enum COOL_SLANT;
    public static final Enum CROSS;
    public static final Enum DIVOT;
    public static final SimpleTypeFactory<STBevelPresetType> Factory;
    public static final Enum HARD_EDGE;
    public static final int INT_ANGLE = 5;
    public static final int INT_ART_DECO = 12;
    public static final int INT_CIRCLE = 2;
    public static final int INT_CONVEX = 7;
    public static final int INT_COOL_SLANT = 8;
    public static final int INT_CROSS = 4;
    public static final int INT_DIVOT = 9;
    public static final int INT_HARD_EDGE = 11;
    public static final int INT_RELAXED_INSET = 1;
    public static final int INT_RIBLET = 10;
    public static final int INT_SLOPE = 3;
    public static final int INT_SOFT_ROUND = 6;
    public static final Enum RELAXED_INSET;
    public static final Enum RIBLET;
    public static final Enum SLOPE;
    public static final Enum SOFT_ROUND;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ANGLE = 5;
        static final int INT_ART_DECO = 12;
        static final int INT_CIRCLE = 2;
        static final int INT_CONVEX = 7;
        static final int INT_COOL_SLANT = 8;
        static final int INT_CROSS = 4;
        static final int INT_DIVOT = 9;
        static final int INT_HARD_EDGE = 11;
        static final int INT_RELAXED_INSET = 1;
        static final int INT_RIBLET = 10;
        static final int INT_SLOPE = 3;
        static final int INT_SOFT_ROUND = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("relaxedInset", 1), new Enum("circle", 2), new Enum("slope", 3), new Enum("cross", 4), new Enum("angle", 5), new Enum("softRound", 6), new Enum("convex", 7), new Enum("coolSlant", 8), new Enum("divot", 9), new Enum("riblet", 10), new Enum("hardEdge", 11), new Enum("artDeco", 12)});

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
        SimpleTypeFactory<STBevelPresetType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbevelpresettype48b4type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        RELAXED_INSET = Enum.forString("relaxedInset");
        CIRCLE = Enum.forString("circle");
        SLOPE = Enum.forString("slope");
        CROSS = Enum.forString("cross");
        ANGLE = Enum.forString("angle");
        SOFT_ROUND = Enum.forString("softRound");
        CONVEX = Enum.forString("convex");
        COOL_SLANT = Enum.forString("coolSlant");
        DIVOT = Enum.forString("divot");
        RIBLET = Enum.forString("riblet");
        HARD_EDGE = Enum.forString("hardEdge");
        ART_DECO = Enum.forString("artDeco");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
