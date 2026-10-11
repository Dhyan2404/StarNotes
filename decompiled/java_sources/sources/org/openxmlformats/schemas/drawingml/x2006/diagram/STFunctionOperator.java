package org.openxmlformats.schemas.drawingml.x2006.diagram;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STFunctionOperator extends XmlToken {
    public static final Enum EQU;
    public static final SimpleTypeFactory<STFunctionOperator> Factory;

    /* renamed from: GT */
    public static final Enum f115696GT;
    public static final Enum GTE;
    public static final int INT_EQU = 1;
    public static final int INT_GT = 3;
    public static final int INT_GTE = 5;
    public static final int INT_LT = 4;
    public static final int INT_LTE = 6;
    public static final int INT_NEQ = 2;

    /* renamed from: LT */
    public static final Enum f115697LT;
    public static final Enum LTE;
    public static final Enum NEQ;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EQU = 1;
        static final int INT_GT = 3;
        static final int INT_GTE = 5;
        static final int INT_LT = 4;
        static final int INT_LTE = 6;
        static final int INT_NEQ = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("equ", 1), new Enum("neq", 2), new Enum(WebvttCueParser.f27234n, 3), new Enum(WebvttCueParser.f27233m, 4), new Enum("gte", 5), new Enum("lte", 6)});

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
        SimpleTypeFactory<STFunctionOperator> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfunctionoperator7485type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        EQU = Enum.forString("equ");
        NEQ = Enum.forString("neq");
        f115696GT = Enum.forString(WebvttCueParser.f27234n);
        f115697LT = Enum.forString(WebvttCueParser.f27233m);
        GTE = Enum.forString("gte");
        LTE = Enum.forString("lte");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
