package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlNMTOKEN;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface DerivationControl extends XmlNMTOKEN {
    public static final Enum EXTENSION;
    public static final SimpleTypeFactory<DerivationControl> Factory;
    public static final int INT_EXTENSION = 2;
    public static final int INT_LIST = 4;
    public static final int INT_RESTRICTION = 3;
    public static final int INT_SUBSTITUTION = 1;
    public static final int INT_UNION = 5;
    public static final Enum LIST;
    public static final Enum RESTRICTION;
    public static final Enum SUBSTITUTION;
    public static final Enum UNION;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EXTENSION = 2;
        static final int INT_LIST = 4;
        static final int INT_RESTRICTION = 3;
        static final int INT_SUBSTITUTION = 1;
        static final int INT_UNION = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("substitution", 1), new Enum("extension", 2), new Enum("restriction", 3), new Enum("list", 4), new Enum("union", 5)});

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
        SimpleTypeFactory<DerivationControl> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "derivationcontrola5dftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SUBSTITUTION = Enum.forString("substitution");
        EXTENSION = Enum.forString("extension");
        RESTRICTION = Enum.forString("restriction");
        LIST = Enum.forString("list");
        UNION = Enum.forString("union");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
