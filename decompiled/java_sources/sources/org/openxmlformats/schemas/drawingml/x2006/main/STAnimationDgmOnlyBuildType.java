package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAnimationDgmOnlyBuildType extends XmlToken {
    public static final SimpleTypeFactory<STAnimationDgmOnlyBuildType> Factory;
    public static final int INT_LVL_AT_ONCE = 3;
    public static final int INT_LVL_ONE = 2;
    public static final int INT_ONE = 1;
    public static final Enum LVL_AT_ONCE;
    public static final Enum LVL_ONE;
    public static final Enum ONE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LVL_AT_ONCE = 3;
        static final int INT_LVL_ONE = 2;
        static final int INT_ONE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("one", 1), new Enum("lvlOne", 2), new Enum("lvlAtOnce", 3)});

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
        SimpleTypeFactory<STAnimationDgmOnlyBuildType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stanimationdgmonlybuildtypefbd7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ONE = Enum.forString("one");
        LVL_ONE = Enum.forString("lvlOne");
        LVL_AT_ONCE = Enum.forString("lvlAtOnce");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
