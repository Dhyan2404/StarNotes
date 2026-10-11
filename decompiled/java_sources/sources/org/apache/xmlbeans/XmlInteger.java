package org.apache.xmlbeans;

import java.math.BigInteger;
import org.apache.xmlbeans.impl.schema.XmlObjectFactory;

/* loaded from: classes13.dex */
public interface XmlInteger extends XmlDecimal {
    public static final XmlObjectFactory<XmlInteger> Factory;
    public static final SchemaType type;

    static {
        XmlObjectFactory<XmlInteger> xmlObjectFactory = new XmlObjectFactory<>("_BI_integer");
        Factory = xmlObjectFactory;
        type = xmlObjectFactory.getType();
    }

    BigInteger getBigIntegerValue();

    void setBigIntegerValue(BigInteger bigInteger);
}
