package org.openxmlformats.schemas.officeDocument.x2006.characteristics;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STRelation extends XmlString {

    /* renamed from: EQ */
    public static final Enum f115750EQ;
    public static final SimpleTypeFactory<STRelation> Factory;

    /* renamed from: GE */
    public static final Enum f115751GE;

    /* renamed from: GT */
    public static final Enum f115752GT;
    public static final int INT_EQ = 5;
    public static final int INT_GE = 1;
    public static final int INT_GT = 3;
    public static final int INT_LE = 2;
    public static final int INT_LT = 4;

    /* renamed from: LE */
    public static final Enum f115753LE;

    /* renamed from: LT */
    public static final Enum f115754LT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EQ = 5;
        static final int INT_GE = 1;
        static final int INT_GT = 3;
        static final int INT_LE = 2;
        static final int INT_LT = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("ge", 1), new Enum("le", 2), new Enum(WebvttCueParser.f27234n, 3), new Enum(WebvttCueParser.f27233m, 4), new Enum("eq", 5)});

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
        SimpleTypeFactory<STRelation> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "strelation0edatype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115751GE = Enum.forString("ge");
        f115753LE = Enum.forString("le");
        f115752GT = Enum.forString(WebvttCueParser.f27234n);
        f115754LT = Enum.forString(WebvttCueParser.f27233m);
        f115750EQ = Enum.forString("eq");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
