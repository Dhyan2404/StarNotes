package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STSizeRepresents extends XmlString {
    public static final Enum AREA;
    public static final SimpleTypeFactory<STSizeRepresents> Factory;
    public static final int INT_AREA = 1;
    public static final int INT_W = 2;

    /* renamed from: W */
    public static final Enum f115673W;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AREA = 1;
        static final int INT_W = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("area", 1), new Enum("w", 2)});

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
        SimpleTypeFactory<STSizeRepresents> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsizerepresentsfc40type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        AREA = Enum.forString("area");
        f115673W = Enum.forString("w");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
