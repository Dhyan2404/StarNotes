package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STChapterSep extends XmlString {
    public static final Enum COLON;
    public static final Enum EM_DASH;
    public static final Enum EN_DASH;
    public static final SimpleTypeFactory<STChapterSep> Factory;
    public static final Enum HYPHEN;
    public static final int INT_COLON = 3;
    public static final int INT_EM_DASH = 4;
    public static final int INT_EN_DASH = 5;
    public static final int INT_HYPHEN = 1;
    public static final int INT_PERIOD = 2;
    public static final Enum PERIOD;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_COLON = 3;
        static final int INT_EM_DASH = 4;
        static final int INT_EN_DASH = 5;
        static final int INT_HYPHEN = 1;
        static final int INT_PERIOD = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("hyphen", 1), new Enum(TypedValues.CycleType.S_WAVE_PERIOD, 2), new Enum("colon", 3), new Enum("emDash", 4), new Enum("enDash", 5)});

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
        SimpleTypeFactory<STChapterSep> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stchaptersep27e7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        HYPHEN = Enum.forString("hyphen");
        PERIOD = Enum.forString(TypedValues.CycleType.S_WAVE_PERIOD);
        COLON = Enum.forString("colon");
        EM_DASH = Enum.forString("emDash");
        EN_DASH = Enum.forString("enDash");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
