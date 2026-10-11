package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAnimationBuildType extends XmlToken {
    public static final Enum ALL_AT_ONCE;
    public static final SimpleTypeFactory<STAnimationBuildType> Factory;
    public static final int INT_ALL_AT_ONCE = 1;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL_AT_ONCE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("allAtOnce", 1)});

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
        SimpleTypeFactory<STAnimationBuildType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stanimationbuildtype430ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ALL_AT_ONCE = Enum.forString("allAtOnce");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
