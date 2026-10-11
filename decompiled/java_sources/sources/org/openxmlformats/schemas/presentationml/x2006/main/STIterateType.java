package org.openxmlformats.schemas.presentationml.x2006.main;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STIterateType extends XmlToken {

    /* renamed from: EL */
    public static final Enum f115768EL;
    public static final SimpleTypeFactory<STIterateType> Factory;
    public static final int INT_EL = 1;
    public static final int INT_LT = 3;
    public static final int INT_WD = 2;

    /* renamed from: LT */
    public static final Enum f115769LT;

    /* renamed from: WD */
    public static final Enum f115770WD;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EL = 1;
        static final int INT_LT = 3;
        static final int INT_WD = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("el", 1), new Enum("wd", 2), new Enum(WebvttCueParser.f27233m, 3)});

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
        SimpleTypeFactory<STIterateType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stiteratetypec50btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115768EL = Enum.forString("el");
        f115770WD = Enum.forString("wd");
        f115769LT = Enum.forString(WebvttCueParser.f27233m);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
