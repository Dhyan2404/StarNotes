package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.google.android.exoplayer2.text.ttml.TtmlDecoder;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STFldCharType extends XmlString {
    public static final Enum BEGIN;
    public static final Enum END;
    public static final SimpleTypeFactory<STFldCharType> Factory;
    public static final int INT_BEGIN = 1;
    public static final int INT_END = 3;
    public static final int INT_SEPARATE = 2;
    public static final Enum SEPARATE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BEGIN = 1;
        static final int INT_END = 3;
        static final int INT_SEPARATE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(TtmlDecoder.f27116r, 1), new Enum("separate", 2), new Enum("end", 3)});

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
        SimpleTypeFactory<STFldCharType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfldchartype1eb4type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BEGIN = Enum.forString(TtmlDecoder.f27116r);
        SEPARATE = Enum.forString("separate");
        END = Enum.forString("end");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
