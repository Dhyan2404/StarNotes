package org.openxmlformats.schemas.xpackage.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STTargetMode extends XmlString {
    public static final Enum EXTERNAL;
    public static final SimpleTypeFactory<STTargetMode> Factory;
    public static final Enum INTERNAL;
    public static final int INT_EXTERNAL = 1;
    public static final int INT_INTERNAL = 2;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EXTERNAL = 1;
        static final int INT_INTERNAL = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("External", 1), new Enum("Internal", 2)});

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
        SimpleTypeFactory<STTargetMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttargetmode0e8ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        EXTERNAL = Enum.forString("External");
        INTERNAL = Enum.forString("Internal");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
