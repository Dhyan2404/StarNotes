package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STCharacterSpacing extends XmlString {
    public static final Enum COMPRESS_PUNCTUATION;
    public static final Enum COMPRESS_PUNCTUATION_AND_JAPANESE_KANA;
    public static final Enum DO_NOT_COMPRESS;
    public static final SimpleTypeFactory<STCharacterSpacing> Factory;
    public static final int INT_COMPRESS_PUNCTUATION = 2;
    public static final int INT_COMPRESS_PUNCTUATION_AND_JAPANESE_KANA = 3;
    public static final int INT_DO_NOT_COMPRESS = 1;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_COMPRESS_PUNCTUATION = 2;
        static final int INT_COMPRESS_PUNCTUATION_AND_JAPANESE_KANA = 3;
        static final int INT_DO_NOT_COMPRESS = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("doNotCompress", 1), new Enum("compressPunctuation", 2), new Enum("compressPunctuationAndJapaneseKana", 3)});

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
        SimpleTypeFactory<STCharacterSpacing> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcharacterspacing803etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DO_NOT_COMPRESS = Enum.forString("doNotCompress");
        COMPRESS_PUNCTUATION = Enum.forString("compressPunctuation");
        COMPRESS_PUNCTUATION_AND_JAPANESE_KANA = Enum.forString("compressPunctuationAndJapaneseKana");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
