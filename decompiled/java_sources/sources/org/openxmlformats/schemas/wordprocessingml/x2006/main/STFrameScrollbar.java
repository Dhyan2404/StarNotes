package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import kotlinx.coroutines.DebugKt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STFrameScrollbar extends XmlString {
    public static final Enum AUTO;
    public static final SimpleTypeFactory<STFrameScrollbar> Factory;
    public static final int INT_AUTO = 3;
    public static final int INT_OFF = 2;
    public static final int INT_ON = 1;
    public static final Enum OFF;

    /* renamed from: ON */
    public static final Enum f115825ON;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO = 3;
        static final int INT_OFF = 2;
        static final int INT_ON = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(DebugKt.DEBUG_PROPERTY_VALUE_ON, 1), new Enum(DebugKt.DEBUG_PROPERTY_VALUE_OFF, 2), new Enum("auto", 3)});

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
        SimpleTypeFactory<STFrameScrollbar> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stframescrollbar34fftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115825ON = Enum.forString(DebugKt.DEBUG_PROPERTY_VALUE_ON);
        OFF = Enum.forString(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        AUTO = Enum.forString("auto");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
