package org.openxmlformats.schemas.officeDocument.x2006.sharedTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAlgType extends XmlString {
    public static final Enum CUSTOM;
    public static final SimpleTypeFactory<STAlgType> Factory;
    public static final int INT_CUSTOM = 2;
    public static final int INT_TYPE_ANY = 1;
    public static final Enum TYPE_ANY;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CUSTOM = 2;
        static final int INT_TYPE_ANY = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("typeAny", 1), new Enum("custom", 2)});

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
        SimpleTypeFactory<STAlgType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stalgtypecaa6type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TYPE_ANY = Enum.forString("typeAny");
        CUSTOM = Enum.forString("custom");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
