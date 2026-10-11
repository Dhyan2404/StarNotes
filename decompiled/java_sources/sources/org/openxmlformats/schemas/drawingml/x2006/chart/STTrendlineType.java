package org.openxmlformats.schemas.drawingml.x2006.chart;

import androidx.constraintlayout.core.motion.utils.Easing;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTrendlineType extends XmlString {
    public static final Enum EXP;
    public static final SimpleTypeFactory<STTrendlineType> Factory;
    public static final int INT_EXP = 1;
    public static final int INT_LINEAR = 2;
    public static final int INT_LOG = 3;
    public static final int INT_MOVING_AVG = 4;
    public static final int INT_POLY = 5;
    public static final int INT_POWER = 6;
    public static final Enum LINEAR;
    public static final Enum LOG;
    public static final Enum MOVING_AVG;
    public static final Enum POLY;
    public static final Enum POWER;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EXP = 1;
        static final int INT_LINEAR = 2;
        static final int INT_LOG = 3;
        static final int INT_MOVING_AVG = 4;
        static final int INT_POLY = 5;
        static final int INT_POWER = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("exp", 1), new Enum(Easing.f2910l, 2), new Enum("log", 3), new Enum("movingAvg", 4), new Enum("poly", 5), new Enum("power", 6)});

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
        SimpleTypeFactory<STTrendlineType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttrendlinetype1f6btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        EXP = Enum.forString("exp");
        LINEAR = Enum.forString(Easing.f2910l);
        LOG = Enum.forString("log");
        MOVING_AVG = Enum.forString("movingAvg");
        POLY = Enum.forString("poly");
        POWER = Enum.forString("power");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
