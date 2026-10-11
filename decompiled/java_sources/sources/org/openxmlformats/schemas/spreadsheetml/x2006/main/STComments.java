package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STComments extends XmlString {
    public static final Enum COMM_INDICATOR;
    public static final Enum COMM_IND_AND_COMMENT;
    public static final Enum COMM_NONE;
    public static final SimpleTypeFactory<STComments> Factory;
    public static final int INT_COMM_INDICATOR = 2;
    public static final int INT_COMM_IND_AND_COMMENT = 3;
    public static final int INT_COMM_NONE = 1;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_COMM_INDICATOR = 2;
        static final int INT_COMM_IND_AND_COMMENT = 3;
        static final int INT_COMM_NONE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("commNone", 1), new Enum("commIndicator", 2), new Enum("commIndAndComment", 3)});

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
        SimpleTypeFactory<STComments> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcommentsdbcdtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        COMM_NONE = Enum.forString("commNone");
        COMM_INDICATOR = Enum.forString("commIndicator");
        COMM_IND_AND_COMMENT = Enum.forString("commIndAndComment");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
