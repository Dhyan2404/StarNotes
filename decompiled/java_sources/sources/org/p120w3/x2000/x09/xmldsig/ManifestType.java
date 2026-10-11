package org.p120w3.x2000.x09.xmldsig;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface ManifestType extends XmlObject {
    public static final DocumentFactory<ManifestType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ManifestType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "manifesttype26b6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ReferenceType addNewReference();

    String getId();

    ReferenceType getReferenceArray(int i);

    ReferenceType[] getReferenceArray();

    List<ReferenceType> getReferenceList();

    ReferenceType insertNewReference(int i);

    boolean isSetId();

    void removeReference(int i);

    void setId(String str);

    void setReferenceArray(int i, ReferenceType referenceType);

    void setReferenceArray(ReferenceType[] referenceTypeArr);

    int sizeOfReferenceArray();

    void unsetId();

    XmlID xgetId();

    void xsetId(XmlID xmlID);
}
