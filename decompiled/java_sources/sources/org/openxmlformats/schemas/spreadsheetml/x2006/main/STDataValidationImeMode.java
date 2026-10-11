package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import kotlinx.coroutines.DebugKt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STDataValidationImeMode extends XmlString {
    public static final Enum DISABLED;
    public static final Enum FULL_ALPHA;
    public static final Enum FULL_HANGUL;
    public static final Enum FULL_KATAKANA;
    public static final SimpleTypeFactory<STDataValidationImeMode> Factory;
    public static final Enum HALF_ALPHA;
    public static final Enum HALF_HANGUL;
    public static final Enum HALF_KATAKANA;
    public static final Enum HIRAGANA;
    public static final int INT_DISABLED = 4;
    public static final int INT_FULL_ALPHA = 8;
    public static final int INT_FULL_HANGUL = 10;
    public static final int INT_FULL_KATAKANA = 6;
    public static final int INT_HALF_ALPHA = 9;
    public static final int INT_HALF_HANGUL = 11;
    public static final int INT_HALF_KATAKANA = 7;
    public static final int INT_HIRAGANA = 5;
    public static final int INT_NO_CONTROL = 1;
    public static final int INT_OFF = 2;
    public static final int INT_ON = 3;
    public static final Enum NO_CONTROL;
    public static final Enum OFF;

    /* renamed from: ON */
    public static final Enum f115793ON;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DISABLED = 4;
        static final int INT_FULL_ALPHA = 8;
        static final int INT_FULL_HANGUL = 10;
        static final int INT_FULL_KATAKANA = 6;
        static final int INT_HALF_ALPHA = 9;
        static final int INT_HALF_HANGUL = 11;
        static final int INT_HALF_KATAKANA = 7;
        static final int INT_HIRAGANA = 5;
        static final int INT_NO_CONTROL = 1;
        static final int INT_OFF = 2;
        static final int INT_ON = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("noControl", 1), new Enum(DebugKt.DEBUG_PROPERTY_VALUE_OFF, 2), new Enum(DebugKt.DEBUG_PROPERTY_VALUE_ON, 3), new Enum("disabled", 4), new Enum("hiragana", 5), new Enum("fullKatakana", 6), new Enum("halfKatakana", 7), new Enum("fullAlpha", 8), new Enum("halfAlpha", 9), new Enum("fullHangul", 10), new Enum("halfHangul", 11)});

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
        SimpleTypeFactory<STDataValidationImeMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdatavalidationimemodef990type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NO_CONTROL = Enum.forString("noControl");
        OFF = Enum.forString(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        f115793ON = Enum.forString(DebugKt.DEBUG_PROPERTY_VALUE_ON);
        DISABLED = Enum.forString("disabled");
        HIRAGANA = Enum.forString("hiragana");
        FULL_KATAKANA = Enum.forString("fullKatakana");
        HALF_KATAKANA = Enum.forString("halfKatakana");
        FULL_ALPHA = Enum.forString("fullAlpha");
        HALF_ALPHA = Enum.forString("halfAlpha");
        FULL_HANGUL = Enum.forString("fullHangul");
        HALF_HANGUL = Enum.forString("halfHangul");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
