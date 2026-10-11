package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import androidx.constraintlayout.core.motion.utils.Easing;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STGradientType extends XmlString {
    public static final SimpleTypeFactory<STGradientType> Factory;
    public static final int INT_LINEAR = 1;
    public static final int INT_PATH = 2;
    public static final Enum LINEAR;
    public static final Enum PATH;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LINEAR = 1;
        static final int INT_PATH = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(Easing.f2910l, 1), new Enum("path", 2)});

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
        SimpleTypeFactory<STGradientType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stgradienttyped663type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        LINEAR = Enum.forString(Easing.f2910l);
        PATH = Enum.forString("path");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
