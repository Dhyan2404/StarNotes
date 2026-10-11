package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CommitmentTypeIndicationDocument extends XmlObject {
    public static final DocumentFactory<CommitmentTypeIndicationDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CommitmentTypeIndicationDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "commitmenttypeindication48afdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CommitmentTypeIndicationType addNewCommitmentTypeIndication();

    CommitmentTypeIndicationType getCommitmentTypeIndication();

    void setCommitmentTypeIndication(CommitmentTypeIndicationType commitmentTypeIndicationType);
}
