package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STRevisionAction extends XmlString {
    public static final Enum ADD;
    public static final Enum DELETE;
    public static final SimpleTypeFactory<STRevisionAction> Factory;
    public static final int INT_ADD = 1;
    public static final int INT_DELETE = 2;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ADD = 1;
        static final int INT_DELETE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("add", 1), new Enum("delete", 2)});

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
        SimpleTypeFactory<STRevisionAction> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "strevisionaction1dcatype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ADD = Enum.forString("add");
        DELETE = Enum.forString("delete");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
