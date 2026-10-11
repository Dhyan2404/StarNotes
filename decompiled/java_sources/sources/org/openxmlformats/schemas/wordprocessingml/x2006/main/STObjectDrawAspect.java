package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STObjectDrawAspect extends XmlString {
    public static final Enum CONTENT;
    public static final SimpleTypeFactory<STObjectDrawAspect> Factory;
    public static final Enum ICON;
    public static final int INT_CONTENT = 1;
    public static final int INT_ICON = 2;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CONTENT = 1;
        static final int INT_ICON = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("content", 1), new Enum("icon", 2)});

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
        SimpleTypeFactory<STObjectDrawAspect> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stobjectdrawaspect295dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CONTENT = Enum.forString("content");
        ICON = Enum.forString("icon");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
