package org.apache.xmlbeans.impl.p119xb.xmlconfig;

import java.util.List;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import org.apache.xmlbeans.metadata.system.sXMLCONFIG.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface Qnametargetlist extends XmlAnySimpleType {
    public static final SimpleTypeFactory<Qnametargetlist> Factory;
    public static final SchemaType type;

    static {
        SimpleTypeFactory<Qnametargetlist> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "qnametargetlist16actype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
    }

    List getListValue();

    void setListValue(List<?> list);

    List xgetListValue();
}
