package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignerRoleDocument extends XmlObject {
    public static final DocumentFactory<SignerRoleDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignerRoleDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signerrole7b44doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignerRoleType addNewSignerRole();

    SignerRoleType getSignerRole();

    void setSignerRole(SignerRoleType signerRoleType);
}
