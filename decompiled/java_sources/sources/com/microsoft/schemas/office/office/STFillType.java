package com.microsoft.schemas.office.office;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STFillType extends XmlString {
    public static final Enum BACKGROUND;
    public static final Enum FRAME;
    public static final SimpleTypeFactory<STFillType> Factory;
    public static final Enum GRADIENT;
    public static final Enum GRADIENT_CENTER;
    public static final Enum GRADIENT_RADIAL;
    public static final Enum GRADIENT_UNSCALED;
    public static final int INT_BACKGROUND = 9;
    public static final int INT_FRAME = 5;
    public static final int INT_GRADIENT = 8;
    public static final int INT_GRADIENT_CENTER = 1;
    public static final int INT_GRADIENT_RADIAL = 7;
    public static final int INT_GRADIENT_UNSCALED = 6;
    public static final int INT_PATTERN = 3;
    public static final int INT_SOLID = 2;
    public static final int INT_TILE = 4;
    public static final Enum PATTERN;
    public static final Enum SOLID;
    public static final Enum TILE;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BACKGROUND = 9;
        static final int INT_FRAME = 5;
        static final int INT_GRADIENT = 8;
        static final int INT_GRADIENT_CENTER = 1;
        static final int INT_GRADIENT_RADIAL = 7;
        static final int INT_GRADIENT_UNSCALED = 6;
        static final int INT_PATTERN = 3;
        static final int INT_SOLID = 2;
        static final int INT_TILE = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("gradientCenter", 1), new Enum("solid", 2), new Enum("pattern", 3), new Enum("tile", 4), new Enum(TypedValues.AttributesType.S_FRAME, 5), new Enum("gradientUnscaled", 6), new Enum("gradientRadial", 7), new Enum("gradient", 8), new Enum(NotificationCompat.WearableExtender.f5054t, 9)});

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
        SimpleTypeFactory<STFillType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfilltype0d50type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        GRADIENT_CENTER = Enum.forString("gradientCenter");
        SOLID = Enum.forString("solid");
        PATTERN = Enum.forString("pattern");
        TILE = Enum.forString("tile");
        FRAME = Enum.forString(TypedValues.AttributesType.S_FRAME);
        GRADIENT_UNSCALED = Enum.forString("gradientUnscaled");
        GRADIENT_RADIAL = Enum.forString("gradientRadial");
        GRADIENT = Enum.forString("gradient");
        BACKGROUND = Enum.forString(NotificationCompat.WearableExtender.f5054t);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
