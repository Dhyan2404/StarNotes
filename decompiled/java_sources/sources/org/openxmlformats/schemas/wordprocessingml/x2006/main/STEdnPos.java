package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STEdnPos extends XmlString {
    public static final Enum DOC_END;
    public static final SimpleTypeFactory<STEdnPos> Factory;
    public static final int INT_DOC_END = 2;
    public static final int INT_SECT_END = 1;
    public static final Enum SECT_END;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DOC_END = 2;
        static final int INT_SECT_END = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("sectEnd", 1), new Enum("docEnd", 2)});

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
        SimpleTypeFactory<STEdnPos> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stednposde93type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SECT_END = Enum.forString("sectEnd");
        DOC_END = Enum.forString("docEnd");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
