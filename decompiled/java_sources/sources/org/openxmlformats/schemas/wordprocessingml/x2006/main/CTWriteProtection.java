package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgClass;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTWriteProtection extends XmlObject {
    public static final DocumentFactory<CTWriteProtection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWriteProtection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwriteprotection6a7atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getAlgIdExt();

    String getAlgIdExtSource();

    String getAlgorithmName();

    STAlgClass.Enum getCryptAlgorithmClass();

    BigInteger getCryptAlgorithmSid();

    STAlgType.Enum getCryptAlgorithmType();

    String getCryptProvider();

    STCryptProv.Enum getCryptProviderType();

    byte[] getCryptProviderTypeExt();

    String getCryptProviderTypeExtSource();

    BigInteger getCryptSpinCount();

    byte[] getHash();

    byte[] getHashValue();

    Object getRecommended();

    byte[] getSalt();

    byte[] getSaltValue();

    BigInteger getSpinCount();

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

    boolean isSetCryptSpinCount();

    boolean isSetHash();

    boolean isSetHashValue();

    boolean isSetRecommended();

    boolean isSetSalt();

    boolean isSetSaltValue();

    boolean isSetSpinCount();

    void setAlgIdExt(byte[] bArr);

    void setAlgIdExtSource(String str);

    void setAlgorithmName(String str);

    void setCryptAlgorithmClass(STAlgClass.Enum r1);

    void setCryptAlgorithmSid(BigInteger bigInteger);

    void setCryptAlgorithmType(STAlgType.Enum r1);

    void setCryptProvider(String str);

    void setCryptProviderType(STCryptProv.Enum r1);

    void setCryptProviderTypeExt(byte[] bArr);

    void setCryptProviderTypeExtSource(String str);

    void setCryptSpinCount(BigInteger bigInteger);

    void setHash(byte[] bArr);

    void setHashValue(byte[] bArr);

    void setRecommended(Object obj);

    void setSalt(byte[] bArr);

    void setSaltValue(byte[] bArr);

    void setSpinCount(BigInteger bigInteger);

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

    void unsetCryptSpinCount();

    void unsetHash();

    void unsetHashValue();

    void unsetRecommended();

    void unsetSalt();

    void unsetSaltValue();

    void unsetSpinCount();

    STLongHexNumber xgetAlgIdExt();

    STString xgetAlgIdExtSource();

    STString xgetAlgorithmName();

    STAlgClass xgetCryptAlgorithmClass();

    STDecimalNumber xgetCryptAlgorithmSid();

    STAlgType xgetCryptAlgorithmType();

    STString xgetCryptProvider();

    STCryptProv xgetCryptProviderType();

    STLongHexNumber xgetCryptProviderTypeExt();

    STString xgetCryptProviderTypeExtSource();

    STDecimalNumber xgetCryptSpinCount();

    XmlBase64Binary xgetHash();

    XmlBase64Binary xgetHashValue();

    STOnOff xgetRecommended();

    XmlBase64Binary xgetSalt();

    XmlBase64Binary xgetSaltValue();

    STDecimalNumber xgetSpinCount();

    void xsetAlgIdExt(STLongHexNumber sTLongHexNumber);

    void xsetAlgIdExtSource(STString sTString);

    void xsetAlgorithmName(STString sTString);

    void xsetCryptAlgorithmClass(STAlgClass sTAlgClass);

    void xsetCryptAlgorithmSid(STDecimalNumber sTDecimalNumber);

    void xsetCryptAlgorithmType(STAlgType sTAlgType);

    void xsetCryptProvider(STString sTString);

    void xsetCryptProviderType(STCryptProv sTCryptProv);

    void xsetCryptProviderTypeExt(STLongHexNumber sTLongHexNumber);

    void xsetCryptProviderTypeExtSource(STString sTString);

    void xsetCryptSpinCount(STDecimalNumber sTDecimalNumber);

    void xsetHash(XmlBase64Binary xmlBase64Binary);

    void xsetHashValue(XmlBase64Binary xmlBase64Binary);

    void xsetRecommended(STOnOff sTOnOff);

    void xsetSalt(XmlBase64Binary xmlBase64Binary);

    void xsetSaltValue(XmlBase64Binary xmlBase64Binary);

    void xsetSpinCount(STDecimalNumber sTDecimalNumber);
}
