package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPyramidAccentPosition extends XmlToken {
    public static final Enum AFT;
    public static final Enum BEF;
    public static final SimpleTypeFactory<STPyramidAccentPosition> Factory;
    public static final int INT_AFT = 2;
    public static final int INT_BEF = 1;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AFT = 2;
        static final int INT_BEF = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("bef", 1), new Enum("aft", 2)});

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
        SimpleTypeFactory<STPyramidAccentPosition> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpyramidaccentpositionff88type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BEF = Enum.forString("bef");
        AFT = Enum.forString("aft");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
