package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgClass;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv;

/* loaded from: classes14.dex */
public interface CTModifyVerifier extends XmlObject {
    public static final DocumentFactory<CTModifyVerifier> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTModifyVerifier> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmodifyverifier3bb5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getAlgIdExt();

    String getAlgIdExtSource();

    String getAlgorithmName();

    STAlgClass.Enum getCryptAlgorithmClass();

    long getCryptAlgorithmSid();

    STAlgType.Enum getCryptAlgorithmType();

    String getCryptProvider();

    STCryptProv.Enum getCryptProviderType();

    long getCryptProviderTypeExt();

    String getCryptProviderTypeExtSource();

    byte[] getHashData();

    byte[] getHashValue();

    byte[] getSaltData();

    byte[] getSaltValue();

    long getSpinCount();

    long getSpinValue();

    boolean isSetAlgIdExt();

    boolean isSetAlgIdExtSource();

    boolean isSetAlgorithmName();

    boolean isSetCryptAlgorithmClass();

    boolean isSetCryptAlgorithmSid();

    boolean isSetCryptAlgorithmType();

    boolean isSetCryptProvider();

    boolean isSetCryptProviderType();

    boolean isSetCryptProviderTypeExt();

    boolean isSetCryptProviderTypeExtSource();

    boolean isSetHashData();

    boolean isSetHashValue();

    boolean isSetSaltData();

    boolean isSetSaltValue();

    boolean isSetSpinCount();

    boolean isSetSpinValue();

    void setAlgIdExt(long j);

    void setAlgIdExtSource(String str);

    void setAlgorithmName(String str);

    void setCryptAlgorithmClass(STAlgClass.Enum r1);

    void setCryptAlgorithmSid(long j);

    void setCryptAlgorithmType(STAlgType.Enum r1);

    void setCryptProvider(String str);

    void setCryptProviderType(STCryptProv.Enum r1);

    void setCryptProviderTypeExt(long j);

    void setCryptProviderTypeExtSource(String str);

    void setHashData(byte[] bArr);

    void setHashValue(byte[] bArr);

    void setSaltData(byte[] bArr);

    void setSaltValue(byte[] bArr);

    void setSpinCount(long j);

    void setSpinValue(long j);

    void unsetAlgIdExt();

    void unsetAlgIdExtSource();

    void unsetAlgorithmName();

    void unsetCryptAlgorithmClass();

    void unsetCryptAlgorithmSid();

    void unsetCryptAlgorithmType();

    void unsetCryptProvider();

    void unsetCryptProviderType();

    void unsetCryptProviderTypeExt();

    void unsetCryptProviderTypeExtSource();

    void unsetHashData();

    void unsetHashValue();

    void unsetSaltData();

    void unsetSaltValue();

    void unsetSpinCount();

    void unsetSpinValue();

    XmlUnsignedInt xgetAlgIdExt();

    XmlString xgetAlgIdExtSource();

    XmlString xgetAlgorithmName();

    STAlgClass xgetCryptAlgorithmClass();

    XmlUnsignedInt xgetCryptAlgorithmSid();

    STAlgType xgetCryptAlgorithmType();

    XmlString xgetCryptProvider();

    STCryptProv xgetCryptProviderType();

    XmlUnsignedInt xgetCryptProviderTypeExt();

    XmlString xgetCryptProviderTypeExtSource();

    XmlBase64Binary xgetHashData();

    XmlBase64Binary xgetHashValue();

    XmlBase64Binary xgetSaltData();

    XmlBase64Binary xgetSaltValue();

    XmlUnsignedInt xgetSpinCount();

    XmlUnsignedInt xgetSpinValue();

    void xsetAlgIdExt(XmlUnsignedInt xmlUnsignedInt);

    void xsetAlgIdExtSource(XmlString xmlString);

    void xsetAlgorithmName(XmlString xmlString);

    void xsetCryptAlgorithmClass(STAlgClass sTAlgClass);

    void xsetCryptAlgorithmSid(XmlUnsignedInt xmlUnsignedInt);

    void xsetCryptAlgorithmType(STAlgType sTAlgType);

    void xsetCryptProvider(XmlString xmlString);

    void xsetCryptProviderType(STCryptProv sTCryptProv);

    void xsetCryptProviderTypeExt(XmlUnsignedInt xmlUnsignedInt);

    void xsetCryptProviderTypeExtSource(XmlString xmlString);

    void xsetHashData(XmlBase64Binary xmlBase64Binary);

    void xsetHashValue(XmlBase64Binary xmlBase64Binary);

    void xsetSaltData(XmlBase64Binary xmlBase64Binary);

    void xsetSaltValue(XmlBase64Binary xmlBase64Binary);

    void xsetSpinCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetSpinValue(XmlUnsignedInt xmlUnsignedInt);
}
