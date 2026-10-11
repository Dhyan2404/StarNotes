package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface GroupDocument extends XmlObject {
    public static final DocumentFactory<GroupDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<GroupDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "group6eb6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    NamedGroup addNewGroup();

    NamedGroup getGroup();

    void setGroup(NamedGroup namedGroup);
}
