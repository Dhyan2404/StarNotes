package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import xcrash.TombstoneParser;

/* loaded from: classes14.dex */
public interface STPictureFormat extends XmlString {
    public static final SimpleTypeFactory<STPictureFormat> Factory;
    public static final int INT_STACK = 2;
    public static final int INT_STACK_SCALE = 3;
    public static final int INT_STRETCH = 1;
    public static final Enum STACK;
    public static final Enum STACK_SCALE;
    public static final Enum STRETCH;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_STACK = 2;
        static final int INT_STACK_SCALE = 3;
        static final int INT_STRETCH = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("stretch", 1), new Enum(TombstoneParser.keyStack, 2), new Enum("stackScale", 3)});

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
        SimpleTypeFactory<STPictureFormat> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpictureformat4b81type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STRETCH = Enum.forString("stretch");
        STACK = Enum.forString(TombstoneParser.keyStack);
        STACK_SCALE = Enum.forString("stackScale");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
