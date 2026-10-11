package org.apache.xmlbeans.impl.p119xb.xsdschema;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface GroupRef extends RealGroup {
    public static final DocumentFactory<GroupRef> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<GroupRef> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "groupref303ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    QName getRef();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    boolean isSetRef();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    void setRef(QName qName);

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    void unsetRef();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    XmlQName xgetRef();

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Group
    void xsetRef(XmlQName xmlQName);
}
