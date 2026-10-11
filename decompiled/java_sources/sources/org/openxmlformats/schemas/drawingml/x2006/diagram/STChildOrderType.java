package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STChildOrderType extends XmlToken {

    /* renamed from: B */
    public static final Enum f115682B;
    public static final SimpleTypeFactory<STChildOrderType> Factory;
    public static final int INT_B = 1;
    public static final int INT_T = 2;

    /* renamed from: T */
    public static final Enum f115683T;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 1;
        static final int INT_T = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("b", 1), new Enum("t", 2)});

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
        SimpleTypeFactory<STChildOrderType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stchildordertypeb7f5type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115682B = Enum.forString("b");
        f115683T = Enum.forString("t");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
