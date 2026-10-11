package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes13.dex */
public interface QualifierType extends XmlString {
    public static final SimpleTypeFactory<QualifierType> Factory;
    public static final int INT_OID_AS_URI = 1;
    public static final int INT_OID_AS_URN = 2;
    public static final Enum OID_AS_URI;
    public static final Enum OID_AS_URN;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_OID_AS_URI = 1;
        static final int INT_OID_AS_URN = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("OIDAsURI", 1), new Enum("OIDAsURN", 2)});

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
        SimpleTypeFactory<QualifierType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "qualifiertypec1c6type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        OID_AS_URI = Enum.forString("OIDAsURI");
        OID_AS_URN = Enum.forString("OIDAsURN");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
