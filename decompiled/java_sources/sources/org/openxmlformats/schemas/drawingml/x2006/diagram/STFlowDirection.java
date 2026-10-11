package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STFlowDirection extends XmlToken {
    public static final Enum COL;
    public static final SimpleTypeFactory<STFlowDirection> Factory;
    public static final int INT_COL = 2;
    public static final int INT_ROW = 1;
    public static final Enum ROW;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_COL = 2;
        static final int INT_ROW = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("row", 1), new Enum("col", 2)});

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
        SimpleTypeFactory<STFlowDirection> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stflowdirection27datype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ROW = Enum.forString("row");
        COL = Enum.forString("col");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
