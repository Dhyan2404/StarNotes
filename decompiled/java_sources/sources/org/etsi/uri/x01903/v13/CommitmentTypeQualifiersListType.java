package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CommitmentTypeQualifiersListType extends XmlObject {
    public static final DocumentFactory<CommitmentTypeQualifiersListType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CommitmentTypeQualifiersListType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "commitmenttypequalifierslisttype2d24type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AnyType addNewCommitmentTypeQualifier();

    AnyType getCommitmentTypeQualifierArray(int i);

    AnyType[] getCommitmentTypeQualifierArray();

    List<AnyType> getCommitmentTypeQualifierList();

    AnyType insertNewCommitmentTypeQualifier(int i);

    void removeCommitmentTypeQualifier(int i);

    void setCommitmentTypeQualifierArray(int i, AnyType anyType);

    void setCommitmentTypeQualifierArray(AnyType[] anyTypeArr);

    int sizeOfCommitmentTypeQualifierArray();
}
