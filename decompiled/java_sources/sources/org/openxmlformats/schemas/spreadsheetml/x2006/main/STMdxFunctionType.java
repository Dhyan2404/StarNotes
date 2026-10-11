package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STMdxFunctionType extends XmlString {

    /* renamed from: C */
    public static final Enum f115797C;
    public static final SimpleTypeFactory<STMdxFunctionType> Factory;
    public static final int INT_C = 4;
    public static final int INT_K = 7;
    public static final int INT_M = 1;
    public static final int INT_P = 6;
    public static final int INT_R = 5;
    public static final int INT_S = 3;
    public static final int INT_V = 2;

    /* renamed from: K */
    public static final Enum f115798K;

    /* renamed from: M */
    public static final Enum f115799M;

    /* renamed from: P */
    public static final Enum f115800P;

    /* renamed from: R */
    public static final Enum f115801R;

    /* renamed from: S */
    public static final Enum f115802S;

    /* renamed from: V */
    public static final Enum f115803V;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_C = 4;
        static final int INT_K = 7;
        static final int INT_M = 1;
        static final int INT_P = 6;
        static final int INT_R = 5;
        static final int INT_S = 3;
        static final int INT_V = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("m", 1), new Enum("v", 2), new Enum("s", 3), new Enum("c", 4), new Enum("r", 5), new Enum("p", 6), new Enum(C4921e.f26537n, 7)});

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
        SimpleTypeFactory<STMdxFunctionType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmdxfunctiontype3b22type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115799M = Enum.forString("m");
        f115803V = Enum.forString("v");
        f115802S = Enum.forString("s");
        f115797C = Enum.forString("c");
        f115801R = Enum.forString("r");
        f115800P = Enum.forString("p");
        f115798K = Enum.forString(C4921e.f26537n);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
