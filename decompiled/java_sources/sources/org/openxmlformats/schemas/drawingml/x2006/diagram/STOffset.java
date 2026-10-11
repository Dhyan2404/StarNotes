package org.openxmlformats.schemas.drawingml.x2006.diagram;

import kotlinx.coroutines.DebugKt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STOffset extends XmlToken {
    public static final Enum CTR;
    public static final SimpleTypeFactory<STOffset> Factory;
    public static final int INT_CTR = 1;
    public static final int INT_OFF = 2;
    public static final Enum OFF;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CTR = 1;
        static final int INT_OFF = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("ctr", 1), new Enum(DebugKt.DEBUG_PROPERTY_VALUE_OFF, 2)});

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
        SimpleTypeFactory<STOffset> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stoffsete22etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CTR = Enum.forString("ctr");
        OFF = Enum.forString(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
