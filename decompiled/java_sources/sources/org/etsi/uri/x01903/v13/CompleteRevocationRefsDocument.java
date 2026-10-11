package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CompleteRevocationRefsDocument extends XmlObject {
    public static final DocumentFactory<CompleteRevocationRefsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CompleteRevocationRefsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "completerevocationrefse9dbdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CompleteRevocationRefsType addNewCompleteRevocationRefs();

    CompleteRevocationRefsType getCompleteRevocationRefs();

    void setCompleteRevocationRefs(CompleteRevocationRefsType completeRevocationRefsType);
}
