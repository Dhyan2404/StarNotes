package org.apache.xmlbeans.impl.p119xb.xmlschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLLANG.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface BaseAttribute extends XmlObject {
    public static final DocumentFactory<BaseAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BaseAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "basece23attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBase();

    boolean isSetBase();

    void setBase(String str);

    void unsetBase();

    XmlAnyURI xgetBase();

    void xsetBase(XmlAnyURI xmlAnyURI);
}
