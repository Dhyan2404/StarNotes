package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.poi.ss.util.CellUtil;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STSdtAppearance extends XmlString {
    public static final Enum BOUNDING_BOX;
    public static final SimpleTypeFactory<STSdtAppearance> Factory;
    public static final Enum HIDDEN;
    public static final int INT_BOUNDING_BOX = 1;
    public static final int INT_HIDDEN = 3;
    public static final int INT_TAGS = 2;
    public static final Enum TAGS;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOUNDING_BOX = 1;
        static final int INT_HIDDEN = 3;
        static final int INT_TAGS = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("boundingBox", 1), new Enum("tags", 2), new Enum(CellUtil.HIDDEN, 3)});

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
        SimpleTypeFactory<STSdtAppearance> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsdtappearance49f9type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BOUNDING_BOX = Enum.forString("boundingBox");
        TAGS = Enum.forString("tags");
        HIDDEN = Enum.forString(CellUtil.HIDDEN);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
