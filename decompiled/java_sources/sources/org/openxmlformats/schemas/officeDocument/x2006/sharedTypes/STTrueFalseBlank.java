package org.openxmlformats.schemas.officeDocument.x2006.sharedTypes;

import com.miui.penengine.p015e.C6997f;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTrueFalseBlank extends XmlString {

    /* renamed from: F */
    public static final Enum f115765F;
    public static final Enum FALSE;
    public static final Enum FALSE_2;
    public static final SimpleTypeFactory<STTrueFalseBlank> Factory;
    public static final int INT_F = 2;
    public static final int INT_FALSE = 4;
    public static final int INT_FALSE_2 = 7;
    public static final int INT_T = 1;
    public static final int INT_TRUE = 3;
    public static final int INT_TRUE_2 = 6;
    public static final int INT_X = 5;

    /* renamed from: T */
    public static final Enum f115766T;
    public static final Enum TRUE;
    public static final Enum TRUE_2;

    /* renamed from: X */
    public static final Enum f115767X;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_F = 2;
        static final int INT_FALSE = 4;
        static final int INT_FALSE_2 = 7;
        static final int INT_T = 1;
        static final int INT_TRUE = 3;
        static final int INT_TRUE_2 = 6;
        static final int INT_X = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("t", 1), new Enum(C6997f.f39671c, 2), new Enum("true", 3), new Enum("false", 4), new Enum("", 5), new Enum("True", 6), new Enum("False", 7)});

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
        SimpleTypeFactory<STTrueFalseBlank> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttruefalseblank5459type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115766T = Enum.forString("t");
        f115765F = Enum.forString(C6997f.f39671c);
        TRUE = Enum.forString("true");
        FALSE = Enum.forString("false");
        f115767X = Enum.forString("");
        TRUE_2 = Enum.forString("True");
        FALSE_2 = Enum.forString("False");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
