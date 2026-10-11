package org.openxmlformats.schemas.presentationml.x2006.main;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTransitionCornerDirectionType extends XmlToken {
    public static final SimpleTypeFactory<STTransitionCornerDirectionType> Factory;
    public static final int INT_LD = 3;
    public static final int INT_LU = 1;
    public static final int INT_RD = 4;
    public static final int INT_RU = 2;

    /* renamed from: LD */
    public static final Enum f115780LD;

    /* renamed from: LU */
    public static final Enum f115781LU;

    /* renamed from: RD */
    public static final Enum f115782RD;

    /* renamed from: RU */
    public static final Enum f115783RU;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LD = 3;
        static final int INT_LU = 1;
        static final int INT_RD = 4;
        static final int INT_RU = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("lu", 1), new Enum(OcrValues.LANG_RUSSIAN, 2), new Enum("ld", 3), new Enum("rd", 4)});

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
        SimpleTypeFactory<STTransitionCornerDirectionType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttransitioncornerdirectiontype0850type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115781LU = Enum.forString("lu");
        f115783RU = Enum.forString(OcrValues.LANG_RUSSIAN);
        f115780LD = Enum.forString("ld");
        f115782RD = Enum.forString("rd");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
