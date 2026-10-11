package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STFallbackDimension extends XmlToken {
    public static final SimpleTypeFactory<STFallbackDimension> Factory;
    public static final int INT_X_1_D = 1;
    public static final int INT_X_2_D = 2;
    public static final Enum X_1_D;
    public static final Enum X_2_D;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_X_1_D = 1;
        static final int INT_X_2_D = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("1D", 1), new Enum("2D", 2)});

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
        SimpleTypeFactory<STFallbackDimension> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfallbackdimensione607type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        X_1_D = Enum.forString("1D");
        X_2_D = Enum.forString("2D");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
