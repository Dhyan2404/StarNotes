package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CertifiedRolesListType extends XmlObject {
    public static final DocumentFactory<CertifiedRolesListType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CertifiedRolesListType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "certifiedroleslisttype2aa2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    EncapsulatedPKIDataType addNewCertifiedRole();

    EncapsulatedPKIDataType getCertifiedRoleArray(int i);

    EncapsulatedPKIDataType[] getCertifiedRoleArray();

    List<EncapsulatedPKIDataType> getCertifiedRoleList();

    EncapsulatedPKIDataType insertNewCertifiedRole(int i);

    void removeCertifiedRole(int i);

    void setCertifiedRoleArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType);

    void setCertifiedRoleArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr);

    int sizeOfCertifiedRoleArray();
}
