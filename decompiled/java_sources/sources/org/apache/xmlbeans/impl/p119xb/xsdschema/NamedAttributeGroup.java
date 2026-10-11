package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlNCName;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface NamedAttributeGroup extends AttributeGroup {
    public static final DocumentFactory<NamedAttributeGroup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<NamedAttributeGroup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "namedattributegroup2e29type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroup
    String getName();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroup
    boolean isSetName();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroup
    void setName(String str);

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroup
    void unsetName();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroup
    XmlNCName xgetName();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroup
    void xsetName(XmlNCName xmlNCName);
}
