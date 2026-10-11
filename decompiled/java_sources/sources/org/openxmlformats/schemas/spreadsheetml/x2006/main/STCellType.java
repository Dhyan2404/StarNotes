package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STCellType extends XmlString {

    /* renamed from: B */
    public static final Enum f115789B;

    /* renamed from: E */
    public static final Enum f115790E;
    public static final SimpleTypeFactory<STCellType> Factory;
    public static final Enum INLINE_STR;
    public static final int INT_B = 1;
    public static final int INT_E = 3;
    public static final int INT_INLINE_STR = 6;
    public static final int INT_N = 2;
    public static final int INT_S = 4;
    public static final int INT_STR = 5;

    /* renamed from: N */
    public static final Enum f115791N;

    /* renamed from: S */
    public static final Enum f115792S;
    public static final Enum STR;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 1;
        static final int INT_E = 3;
        static final int INT_INLINE_STR = 6;
        static final int INT_N = 2;
        static final int INT_S = 4;
        static final int INT_STR = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("b", 1), new Enum(GoogleApiAvailabilityLight.f29016b, 2), new Enum("e", 3), new Enum("s", 4), new Enum(ExtensionNamespaceContext.EXSLT_STRING_PREFIX, 5), new Enum("inlineStr", 6)});

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
        SimpleTypeFactory<STCellType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcelltypebf95type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115789B = Enum.forString("b");
        f115791N = Enum.forString(GoogleApiAvailabilityLight.f29016b);
        f115790E = Enum.forString("e");
        f115792S = Enum.forString("s");
        STR = Enum.forString(ExtensionNamespaceContext.EXSLT_STRING_PREFIX);
        INLINE_STR = Enum.forString("inlineStr");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
