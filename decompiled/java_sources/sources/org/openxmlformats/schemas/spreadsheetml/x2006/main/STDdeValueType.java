package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STDdeValueType extends XmlString {

    /* renamed from: B */
    public static final Enum f115794B;

    /* renamed from: E */
    public static final Enum f115795E;
    public static final SimpleTypeFactory<STDdeValueType> Factory;
    public static final int INT_B = 2;
    public static final int INT_E = 4;
    public static final int INT_N = 3;
    public static final int INT_NIL = 1;
    public static final int INT_STR = 5;

    /* renamed from: N */
    public static final Enum f115796N;
    public static final Enum NIL;
    public static final Enum STR;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 2;
        static final int INT_E = 4;
        static final int INT_N = 3;
        static final int INT_NIL = 1;
        static final int INT_STR = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("nil", 1), new Enum("b", 2), new Enum(GoogleApiAvailabilityLight.f29016b, 3), new Enum("e", 4), new Enum(ExtensionNamespaceContext.EXSLT_STRING_PREFIX, 5)});

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
        SimpleTypeFactory<STDdeValueType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stddevaluetype6abftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NIL = Enum.forString("nil");
        f115794B = Enum.forString("b");
        f115796N = Enum.forString(GoogleApiAvailabilityLight.f29016b);
        f115795E = Enum.forString("e");
        STR = Enum.forString(ExtensionNamespaceContext.EXSLT_STRING_PREFIX);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
