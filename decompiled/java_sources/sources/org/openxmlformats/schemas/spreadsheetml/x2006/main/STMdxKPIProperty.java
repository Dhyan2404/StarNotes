package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.miui.penengine.p015e.C6998g;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STMdxKPIProperty extends XmlString {
    public static final SimpleTypeFactory<STMdxKPIProperty> Factory;

    /* renamed from: G */
    public static final Enum f115804G;
    public static final int INT_G = 2;
    public static final int INT_M = 6;
    public static final int INT_S = 3;
    public static final int INT_T = 4;
    public static final int INT_V = 1;
    public static final int INT_W = 5;

    /* renamed from: M */
    public static final Enum f115805M;

    /* renamed from: S */
    public static final Enum f115806S;

    /* renamed from: T */
    public static final Enum f115807T;

    /* renamed from: V */
    public static final Enum f115808V;

    /* renamed from: W */
    public static final Enum f115809W;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_G = 2;
        static final int INT_M = 6;
        static final int INT_S = 3;
        static final int INT_T = 4;
        static final int INT_V = 1;
        static final int INT_W = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("v", 1), new Enum(C6998g.f39679a, 2), new Enum("s", 3), new Enum("t", 4), new Enum("w", 5), new Enum("m", 6)});

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
        SimpleTypeFactory<STMdxKPIProperty> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmdxkpiproperty8631type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115808V = Enum.forString("v");
        f115804G = Enum.forString(C6998g.f39679a);
        f115806S = Enum.forString("s");
        f115807T = Enum.forString("t");
        f115809W = Enum.forString("w");
        f115805M = Enum.forString("m");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
