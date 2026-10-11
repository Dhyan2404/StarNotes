package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STErrDir extends XmlString {
    public static final SimpleTypeFactory<STErrDir> Factory;
    public static final int INT_X = 1;
    public static final int INT_Y = 2;

    /* renamed from: X */
    public static final Enum f115663X;

    /* renamed from: Y */
    public static final Enum f115664Y;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_X = 1;
        static final int INT_Y = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("x", 1), new Enum("y", 2)});

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
        SimpleTypeFactory<STErrDir> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sterrdir0004type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115663X = Enum.forString("x");
        f115664Y = Enum.forString("y");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
