package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface OtherTimeStampType extends GenericTimeStampType {
    public static final DocumentFactory<OtherTimeStampType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OtherTimeStampType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "othertimestamptypea194type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    EncapsulatedPKIDataType addNewEncapsulatedTimeStamp();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    ReferenceInfoType addNewReferenceInfo();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    AnyType addNewXMLTimeStamp();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    EncapsulatedPKIDataType getEncapsulatedTimeStampArray(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    EncapsulatedPKIDataType[] getEncapsulatedTimeStampArray();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    List<EncapsulatedPKIDataType> getEncapsulatedTimeStampList();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    ReferenceInfoType getReferenceInfoArray(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    ReferenceInfoType[] getReferenceInfoArray();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    List<ReferenceInfoType> getReferenceInfoList();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    AnyType getXMLTimeStampArray(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    AnyType[] getXMLTimeStampArray();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    List<AnyType> getXMLTimeStampList();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    EncapsulatedPKIDataType insertNewEncapsulatedTimeStamp(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    ReferenceInfoType insertNewReferenceInfo(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    AnyType insertNewXMLTimeStamp(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void removeEncapsulatedTimeStamp(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void removeReferenceInfo(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void removeXMLTimeStamp(int i);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void setEncapsulatedTimeStampArray(int i, EncapsulatedPKIDataType encapsulatedPKIDataType);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void setEncapsulatedTimeStampArray(EncapsulatedPKIDataType[] encapsulatedPKIDataTypeArr);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void setReferenceInfoArray(int i, ReferenceInfoType referenceInfoType);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void setReferenceInfoArray(ReferenceInfoType[] referenceInfoTypeArr);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void setXMLTimeStampArray(int i, AnyType anyType);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    void setXMLTimeStampArray(AnyType[] anyTypeArr);

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    int sizeOfEncapsulatedTimeStampArray();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    int sizeOfReferenceInfoArray();

    @Override // org.etsi.uri.x01903.v13.GenericTimeStampType
    int sizeOfXMLTimeStampArray();
}
