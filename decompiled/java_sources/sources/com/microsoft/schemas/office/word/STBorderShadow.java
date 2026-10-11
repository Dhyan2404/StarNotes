package com.microsoft.schemas.office.word;

import com.miui.penengine.p015e.C6997f;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STBorderShadow extends XmlString {

    /* renamed from: F */
    public static final Enum f39541F;
    public static final Enum FALSE;
    public static final SimpleTypeFactory<STBorderShadow> Factory;
    public static final int INT_F = 3;
    public static final int INT_FALSE = 4;
    public static final int INT_T = 1;
    public static final int INT_TRUE = 2;

    /* renamed from: T */
    public static final Enum f39542T;
    public static final Enum TRUE;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_F = 3;
        static final int INT_FALSE = 4;
        static final int INT_T = 1;
        static final int INT_TRUE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("t", 1), new Enum("true", 2), new Enum(C6997f.f39671c, 3), new Enum("false", 4)});

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
        SimpleTypeFactory<STBorderShadow> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbordershadow2dedtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f39542T = Enum.forString("t");
        TRUE = Enum.forString("true");
        f39541F = Enum.forString(C6997f.f39671c);
        FALSE = Enum.forString("false");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
