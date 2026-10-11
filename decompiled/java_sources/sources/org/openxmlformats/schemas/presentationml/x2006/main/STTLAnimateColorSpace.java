package org.openxmlformats.schemas.presentationml.x2006.main;

import com.google.android.exoplayer2.util.ColorParser;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLAnimateColorSpace extends XmlToken {
    public static final SimpleTypeFactory<STTLAnimateColorSpace> Factory;
    public static final Enum HSL;
    public static final int INT_HSL = 2;
    public static final int INT_RGB = 1;
    public static final Enum RGB;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_HSL = 2;
        static final int INT_RGB = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(ColorParser.f28273a, 1), new Enum("hsl", 2)});

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
        SimpleTypeFactory<STTLAnimateColorSpace> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttlanimatecolorspace4a33type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        RGB = Enum.forString(ColorParser.f28273a);
        HSL = Enum.forString("hsl");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
