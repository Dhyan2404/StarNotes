package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBreakpoint extends XmlToken {
    public static final Enum BAL;
    public static final Enum END_CNV;
    public static final Enum FIXED;
    public static final SimpleTypeFactory<STBreakpoint> Factory;
    public static final int INT_BAL = 2;
    public static final int INT_END_CNV = 1;
    public static final int INT_FIXED = 3;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BAL = 2;
        static final int INT_END_CNV = 1;
        static final int INT_FIXED = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("endCnv", 1), new Enum("bal", 2), new Enum("fixed", 3)});

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
        SimpleTypeFactory<STBreakpoint> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbreakpointd310type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        END_CNV = Enum.forString("endCnv");
        BAL = Enum.forString("bal");
        FIXED = Enum.forString("fixed");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
