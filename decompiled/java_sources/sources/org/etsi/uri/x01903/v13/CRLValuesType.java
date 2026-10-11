package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CRLValuesType extends XmlObject {
    public static final DocumentFactory<CRLValuesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CRLValuesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "crlvaluestype0ebbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    EncapsulatedPKIDataType addNewEncapsulatedCRLValue();

    EncapsulatedPKIDataType getEncapsulatedCRLValueArray(int i);

    EncapsulatedPKIDataType[] getEncapsulatedCRLValueArray();

    List<EncapsulatedPKIDataType> getEncapsulatedCRLValueList();

    EncapsulatedPKIDataType insertNewEncapsulatedCRLValue(int i);

    void removeEncapsulatedCRLValue(int i);

    void setEncapsulatedCRLValueArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType);

    void setEncapsulatedCRLValueArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr);

    int sizeOfEncapsulatedCRLValueArray();
}
