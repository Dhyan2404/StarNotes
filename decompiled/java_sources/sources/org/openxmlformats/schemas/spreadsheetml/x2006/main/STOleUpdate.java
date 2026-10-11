package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STOleUpdate extends XmlString {
    public static final SimpleTypeFactory<STOleUpdate> Factory;
    public static final int INT_OLEUPDATE_ALWAYS = 1;
    public static final int INT_OLEUPDATE_ONCALL = 2;
    public static final Enum OLEUPDATE_ALWAYS;
    public static final Enum OLEUPDATE_ONCALL;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_OLEUPDATE_ALWAYS = 1;
        static final int INT_OLEUPDATE_ONCALL = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("OLEUPDATE_ALWAYS", 1), new Enum("OLEUPDATE_ONCALL", 2)});

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
        SimpleTypeFactory<STOleUpdate> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stoleupdate9760type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        OLEUPDATE_ALWAYS = Enum.forString("OLEUPDATE_ALWAYS");
        OLEUPDATE_ONCALL = Enum.forString("OLEUPDATE_ONCALL");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
