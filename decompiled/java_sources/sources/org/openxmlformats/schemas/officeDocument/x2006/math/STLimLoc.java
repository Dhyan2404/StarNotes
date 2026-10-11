package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STLimLoc extends XmlString {
    public static final SimpleTypeFactory<STLimLoc> Factory;
    public static final int INT_SUB_SUP = 2;
    public static final int INT_UND_OVR = 1;
    public static final Enum SUB_SUP;
    public static final Enum UND_OVR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_SUB_SUP = 2;
        static final int INT_UND_OVR = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("undOvr", 1), new Enum("subSup", 2)});

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
        SimpleTypeFactory<STLimLoc> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlimlocb952type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        UND_OVR = Enum.forString("undOvr");
        SUB_SUP = Enum.forString("subSup");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
