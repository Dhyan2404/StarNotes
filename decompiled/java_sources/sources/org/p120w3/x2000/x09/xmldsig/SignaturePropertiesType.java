package org.p120w3.x2000.x09.xmldsig;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignaturePropertiesType extends XmlObject {
    public static final DocumentFactory<SignaturePropertiesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignaturePropertiesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturepropertiestype884ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignaturePropertyType addNewSignatureProperty();

    String getId();

    SignaturePropertyType getSignaturePropertyArray(int i);

    SignaturePropertyType[] getSignaturePropertyArray();

    List<SignaturePropertyType> getSignaturePropertyList();

    SignaturePropertyType insertNewSignatureProperty(int i);

    boolean isSetId();

    void removeSignatureProperty(int i);

    void setId(String str);

    void setSignaturePropertyArray(int i, SignaturePropertyType signaturePropertyType);

    void setSignaturePropertyArray(SignaturePropertyType[] signaturePropertyTypeArr);

    int sizeOfSignaturePropertyArray();

    void unsetId();

    XmlID xgetId();

    void xsetId(XmlID xmlID);
}
