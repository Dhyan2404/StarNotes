package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLAnimateBehaviorCalcMode extends XmlToken {
    public static final Enum DISCRETE;
    public static final Enum FMLA;
    public static final SimpleTypeFactory<STTLAnimateBehaviorCalcMode> Factory;
    public static final int INT_DISCRETE = 1;
    public static final int INT_FMLA = 3;
    public static final int INT_LIN = 2;
    public static final Enum LIN;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DISCRETE = 1;
        static final int INT_FMLA = 3;
        static final int INT_LIN = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("discrete", 1), new Enum("lin", 2), new Enum("fmla", 3)});

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
        SimpleTypeFactory<STTLAnimateBehaviorCalcMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlanimatebehaviorcalcmodefa2ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DISCRETE = Enum.forString("discrete");
        LIN = Enum.forString("lin");
        FMLA = Enum.forString("fmla");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
