package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAxPos extends XmlString {

    /* renamed from: B */
    public static final Enum f115655B;
    public static final SimpleTypeFactory<STAxPos> Factory;
    public static final int INT_B = 1;
    public static final int INT_L = 2;
    public static final int INT_R = 3;
    public static final int INT_T = 4;

    /* renamed from: L */
    public static final Enum f115656L;

    /* renamed from: R */
    public static final Enum f115657R;

    /* renamed from: T */
    public static final Enum f115658T;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 1;
        static final int INT_L = 2;
        static final int INT_R = 3;
        static final int INT_T = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("b", 1), new Enum("l", 2), new Enum("r", 3), new Enum("t", 4)});

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
        SimpleTypeFactory<STAxPos> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "staxpos4379type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115655B = Enum.forString("b");
        f115656L = Enum.forString("l");
        f115657R = Enum.forString("r");
        f115658T = Enum.forString("t");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
