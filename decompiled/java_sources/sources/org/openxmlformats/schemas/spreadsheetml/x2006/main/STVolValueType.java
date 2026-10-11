package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STVolValueType extends XmlString {

    /* renamed from: B */
    public static final Enum f115818B;

    /* renamed from: E */
    public static final Enum f115819E;
    public static final SimpleTypeFactory<STVolValueType> Factory;
    public static final int INT_B = 1;
    public static final int INT_E = 3;
    public static final int INT_N = 2;
    public static final int INT_S = 4;

    /* renamed from: N */
    public static final Enum f115820N;

    /* renamed from: S */
    public static final Enum f115821S;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 1;
        static final int INT_E = 3;
        static final int INT_N = 2;
        static final int INT_S = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("b", 1), new Enum(GoogleApiAvailabilityLight.f29016b, 2), new Enum("e", 3), new Enum("s", 4)});

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
        SimpleTypeFactory<STVolValueType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stvolvaluetype4711type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115818B = Enum.forString("b");
        f115820N = Enum.forString(GoogleApiAvailabilityLight.f29016b);
        f115819E = Enum.forString("e");
        f115821S = Enum.forString("s");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
