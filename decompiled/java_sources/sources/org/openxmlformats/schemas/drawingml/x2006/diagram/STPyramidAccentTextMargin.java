package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import xcrash.TombstoneParser;

/* loaded from: classes14.dex */
public interface STPyramidAccentTextMargin extends XmlToken {
    public static final SimpleTypeFactory<STPyramidAccentTextMargin> Factory;
    public static final int INT_STACK = 2;
    public static final int INT_STEP = 1;
    public static final Enum STACK;
    public static final Enum STEP;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_STACK = 2;
        static final int INT_STEP = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("step", 1), new Enum(TombstoneParser.keyStack, 2)});

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
        SimpleTypeFactory<STPyramidAccentTextMargin> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpyramidaccenttextmargin6cf6type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STEP = Enum.forString("step");
        STACK = Enum.forString(TombstoneParser.keyStack);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
