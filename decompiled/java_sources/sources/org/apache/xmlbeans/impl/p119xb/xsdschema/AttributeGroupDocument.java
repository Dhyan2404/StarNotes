package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface AttributeGroupDocument extends XmlObject {
    public static final DocumentFactory<AttributeGroupDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AttributeGroupDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "attributegroup4520doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    NamedAttributeGroup addNewAttributeGroup();

    NamedAttributeGroup getAttributeGroup();

    void setAttributeGroup(NamedAttributeGroup namedAttributeGroup);
}
