package org.p120w3.x2000.x09.xmldsig;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface KeyInfoType extends XmlObject {
    public static final DocumentFactory<KeyInfoType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<KeyInfoType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "keyinfotypec7eatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addKeyName(String str);

    void addMgmtData(String str);

    XmlString addNewKeyName();

    KeyValueType addNewKeyValue();

    XmlString addNewMgmtData();

    PGPDataType addNewPGPData();

    RetrievalMethodType addNewRetrievalMethod();

    SPKIDataType addNewSPKIData();

    X509DataType addNewX509Data();

    String getId();

    String getKeyNameArray(int i);

    String[] getKeyNameArray();

    List<String> getKeyNameList();

    KeyValueType getKeyValueArray(int i);

    KeyValueType[] getKeyValueArray();

    List<KeyValueType> getKeyValueList();

    String getMgmtDataArray(int i);

    String[] getMgmtDataArray();

    List<String> getMgmtDataList();

    PGPDataType getPGPDataArray(int i);

    PGPDataType[] getPGPDataArray();

    List<PGPDataType> getPGPDataList();

    RetrievalMethodType getRetrievalMethodArray(int i);

    RetrievalMethodType[] getRetrievalMethodArray();

    List<RetrievalMethodType> getRetrievalMethodList();

    SPKIDataType getSPKIDataArray(int i);

    SPKIDataType[] getSPKIDataArray();

    List<SPKIDataType> getSPKIDataList();

    X509DataType getX509DataArray(int i);

    X509DataType[] getX509DataArray();

    List<X509DataType> getX509DataList();

    void insertKeyName(int i, String str);

    void insertMgmtData(int i, String str);

    XmlString insertNewKeyName(int i);

    KeyValueType insertNewKeyValue(int i);

    XmlString insertNewMgmtData(int i);

    PGPDataType insertNewPGPData(int i);

    RetrievalMethodType insertNewRetrievalMethod(int i);

    SPKIDataType insertNewSPKIData(int i);

    X509DataType insertNewX509Data(int i);

    boolean isSetId();

    void removeKeyName(int i);

    void removeKeyValue(int i);

    void removeMgmtData(int i);

    void removePGPData(int i);

    void removeRetrievalMethod(int i);

    void removeSPKIData(int i);

    void removeX509Data(int i);

    void setId(String str);

    void setKeyNameArray(int i, String str);

    void setKeyNameArray(String[] strArr);

    void setKeyValueArray(int i, KeyValueType keyValueType);

    void setKeyValueArray(KeyValueType[] keyValueTypeArr);

    void setMgmtDataArray(int i, String str);

    void setMgmtDataArray(String[] strArr);

    void setPGPDataArray(int i, PGPDataType pGPDataType);

    void setPGPDataArray(PGPDataType[] pGPDataTypeArr);

    void setRetrievalMethodArray(int i, RetrievalMethodType retrievalMethodType);

    void setRetrievalMethodArray(RetrievalMethodType[] retrievalMethodTypeArr);

    void setSPKIDataArray(int i, SPKIDataType sPKIDataType);

    void setSPKIDataArray(SPKIDataType[] sPKIDataTypeArr);

    void setX509DataArray(int i, X509DataType x509DataType);

    void setX509DataArray(X509DataType[] x509DataTypeArr);

    int sizeOfKeyNameArray();

    int sizeOfKeyValueArray();

    int sizeOfMgmtDataArray();

    int sizeOfPGPDataArray();

    int sizeOfRetrievalMethodArray();

    int sizeOfSPKIDataArray();

    int sizeOfX509DataArray();

    void unsetId();

    XmlID xgetId();

    XmlString xgetKeyNameArray(int i);

    XmlString[] xgetKeyNameArray();

    List<XmlString> xgetKeyNameList();

    XmlString xgetMgmtDataArray(int i);

    XmlString[] xgetMgmtDataArray();

    List<XmlString> xgetMgmtDataList();

    void xsetId(XmlID xmlID);

    void xsetKeyNameArray(int i, XmlString xmlString);

    void xsetKeyNameArray(XmlString[] xmlStringArr);

    void xsetMgmtDataArray(int i, XmlString xmlString);

    void xsetMgmtDataArray(XmlString[] xmlStringArr);
}
