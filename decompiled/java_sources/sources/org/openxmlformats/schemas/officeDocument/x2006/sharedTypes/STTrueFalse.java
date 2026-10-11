package org.openxmlformats.schemas.officeDocument.x2006.sharedTypes;

import com.miui.penengine.p015e.C6997f;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTrueFalse extends XmlString {

    /* renamed from: F */
    public static final Enum f115763F;
    public static final Enum FALSE;
    public static final SimpleTypeFactory<STTrueFalse> Factory;
    public static final int INT_F = 2;
    public static final int INT_FALSE = 4;
    public static final int INT_T = 1;
    public static final int INT_TRUE = 3;

    /* renamed from: T */
    public static final Enum f115764T;
    public static final Enum TRUE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_F = 2;
        static final int INT_FALSE = 4;
        static final int INT_T = 1;
        static final int INT_TRUE = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("t", 1), new Enum(C6997f.f39671c, 2), new Enum("true", 3), new Enum("false", 4)});

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
        SimpleTypeFactory<STTrueFalse> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttruefalse3d65type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115764T = Enum.forString("t");
        f115763F = Enum.forString(C6997f.f39671c);
        TRUE = Enum.forString("true");
        FALSE = Enum.forString("false");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
