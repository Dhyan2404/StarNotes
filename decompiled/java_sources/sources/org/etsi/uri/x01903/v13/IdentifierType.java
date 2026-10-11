package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.etsi.uri.x01903.v13.QualifierType;

/* loaded from: classes13.dex */
public interface IdentifierType extends XmlAnyURI {
    public static final DocumentFactory<IdentifierType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IdentifierType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "identifiertype2cb7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    QualifierType.Enum getQualifier();

    boolean isSetQualifier();

    void setQualifier(QualifierType.Enum r1);

    void unsetQualifier();

    QualifierType xgetQualifier();

    void xsetQualifier(QualifierType qualifierType);
}
