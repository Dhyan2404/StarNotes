package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STLegendPos extends XmlString {

    /* renamed from: B */
    public static final Enum f115667B;
    public static final SimpleTypeFactory<STLegendPos> Factory;
    public static final int INT_B = 1;
    public static final int INT_L = 3;
    public static final int INT_R = 4;
    public static final int INT_T = 5;
    public static final int INT_TR = 2;

    /* renamed from: L */
    public static final Enum f115668L;

    /* renamed from: R */
    public static final Enum f115669R;

    /* renamed from: T */
    public static final Enum f115670T;

    /* renamed from: TR */
    public static final Enum f115671TR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 1;
        static final int INT_L = 3;
        static final int INT_R = 4;
        static final int INT_T = 5;
        static final int INT_TR = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("b", 1), new Enum("tr", 2), new Enum("l", 3), new Enum("r", 4), new Enum("t", 5)});

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
        SimpleTypeFactory<STLegendPos> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlegendposc14ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115667B = Enum.forString("b");
        f115671TR = Enum.forString("tr");
        f115668L = Enum.forString("l");
        f115669R = Enum.forString("r");
        f115670T = Enum.forString("t");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
