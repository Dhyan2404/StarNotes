package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgClass;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STAlgType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLongHexNumber;

/* loaded from: classes16.dex */
public class CTWriteProtectionImpl extends XmlComplexContentImpl implements CTWriteProtection {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "recommended"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "algorithmName"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "hashValue"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "saltValue"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "spinCount"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptProviderType"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptAlgorithmClass"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptAlgorithmType"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptAlgorithmSid"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptSpinCount"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptProvider"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "algIdExt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "algIdExtSource"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptProviderTypeExt"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "cryptProviderTypeExtSource"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "hash"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "salt")};
    private static final long serialVersionUID = 1;

    public CTWriteProtectionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public byte[] getAlgIdExt() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public String getAlgIdExtSource() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public String getAlgorithmName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STAlgClass.Enum getCryptAlgorithmClass() {
        STAlgClass.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            r3 = simpleValue == null ? null : (STAlgClass.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public BigInteger getCryptAlgorithmSid() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STAlgType.Enum getCryptAlgorithmType() {
        STAlgType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            r3 = simpleValue == null ? null : (STAlgType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public String getCryptProvider() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STCryptProv.Enum getCryptProviderType() {
        STCryptProv.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STCryptProv.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public byte[] getCryptProviderTypeExt() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public String getCryptProviderTypeExtSource() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[14]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public BigInteger getCryptSpinCount() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public byte[] getHash() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[15]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public byte[] getHashValue() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public Object getRecommended() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public byte[] getSalt() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public byte[] getSaltValue() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public BigInteger getSpinCount() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetAlgIdExt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetAlgIdExtSource() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetAlgorithmName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptAlgorithmClass() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptAlgorithmSid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptAlgorithmType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptProvider() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptProviderType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptProviderTypeExt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptProviderTypeExtSource() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetCryptSpinCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetHash() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetHashValue() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetRecommended() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetSalt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetSaltValue() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public boolean isSetSpinCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setAlgIdExt(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setAlgIdExtSource(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setAlgorithmName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptAlgorithmClass(STAlgClass.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptAlgorithmSid(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptAlgorithmType(STAlgType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptProvider(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptProviderType(STCryptProv.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptProviderTypeExt(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptProviderTypeExtSource(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setCryptSpinCount(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setHash(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setHashValue(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setRecommended(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setSalt(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setSaltValue(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void setSpinCount(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetAlgIdExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetAlgIdExtSource() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetAlgorithmName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptAlgorithmClass() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptAlgorithmSid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptAlgorithmType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptProvider() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptProviderType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptProviderTypeExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptProviderTypeExtSource() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetCryptSpinCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetHash() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetHashValue() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetRecommended() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetSalt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetSaltValue() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void unsetSpinCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STLongHexNumber xgetAlgIdExt() {
        STLongHexNumber sTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTLongHexNumber = (STLongHexNumber) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return sTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STString xgetAlgIdExtSource() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STString xgetAlgorithmName() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STAlgClass xgetCryptAlgorithmClass() {
        STAlgClass sTAlgClass;
        synchronized (monitor()) {
            check_orphaned();
            sTAlgClass = (STAlgClass) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTAlgClass;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STDecimalNumber xgetCryptAlgorithmSid() {
        STDecimalNumber sTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumber = (STDecimalNumber) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STAlgType xgetCryptAlgorithmType() {
        STAlgType sTAlgType;
        synchronized (monitor()) {
            check_orphaned();
            sTAlgType = (STAlgType) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return sTAlgType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STString xgetCryptProvider() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STCryptProv xgetCryptProviderType() {
        STCryptProv sTCryptProv;
        synchronized (monitor()) {
            check_orphaned();
            sTCryptProv = (STCryptProv) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTCryptProv;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STLongHexNumber xgetCryptProviderTypeExt() {
        STLongHexNumber sTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTLongHexNumber = (STLongHexNumber) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return sTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STString xgetCryptProviderTypeExtSource() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_attribute_user(PROPERTY_QNAME[14]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STDecimalNumber xgetCryptSpinCount() {
        STDecimalNumber sTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumber = (STDecimalNumber) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return sTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public XmlBase64Binary xgetHash() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_attribute_user(PROPERTY_QNAME[15]);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public XmlBase64Binary xgetHashValue() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STOnOff xgetRecommended() {
        STOnOff sTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            sTOnOff = (STOnOff) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public XmlBase64Binary xgetSalt() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public XmlBase64Binary xgetSaltValue() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public STDecimalNumber xgetSpinCount() {
        STDecimalNumber sTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            sTDecimalNumber = (STDecimalNumber) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetAlgIdExt(STLongHexNumber sTLongHexNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLongHexNumber sTLongHexNumber2 = (STLongHexNumber) typeStore.find_attribute_user(qNameArr[11]);
            if (sTLongHexNumber2 == null) {
                sTLongHexNumber2 = (STLongHexNumber) get_store().add_attribute_user(qNameArr[11]);
            }
            sTLongHexNumber2.set(sTLongHexNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetAlgIdExtSource(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[12]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[12]);
            }
            sTString2.set(sTString);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetAlgorithmName(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[1]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[1]);
            }
            sTString2.set(sTString);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptAlgorithmClass(STAlgClass sTAlgClass) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAlgClass sTAlgClass2 = (STAlgClass) typeStore.find_attribute_user(qNameArr[6]);
            if (sTAlgClass2 == null) {
                sTAlgClass2 = (STAlgClass) get_store().add_attribute_user(qNameArr[6]);
            }
            sTAlgClass2.set(sTAlgClass);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptAlgorithmSid(STDecimalNumber sTDecimalNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumber sTDecimalNumber2 = (STDecimalNumber) typeStore.find_attribute_user(qNameArr[8]);
            if (sTDecimalNumber2 == null) {
                sTDecimalNumber2 = (STDecimalNumber) get_store().add_attribute_user(qNameArr[8]);
            }
            sTDecimalNumber2.set(sTDecimalNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptAlgorithmType(STAlgType sTAlgType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAlgType sTAlgType2 = (STAlgType) typeStore.find_attribute_user(qNameArr[7]);
            if (sTAlgType2 == null) {
                sTAlgType2 = (STAlgType) get_store().add_attribute_user(qNameArr[7]);
            }
            sTAlgType2.set(sTAlgType);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptProvider(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[10]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[10]);
            }
            sTString2.set(sTString);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptProviderType(STCryptProv sTCryptProv) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCryptProv sTCryptProv2 = (STCryptProv) typeStore.find_attribute_user(qNameArr[5]);
            if (sTCryptProv2 == null) {
                sTCryptProv2 = (STCryptProv) get_store().add_attribute_user(qNameArr[5]);
            }
            sTCryptProv2.set(sTCryptProv);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptProviderTypeExt(STLongHexNumber sTLongHexNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLongHexNumber sTLongHexNumber2 = (STLongHexNumber) typeStore.find_attribute_user(qNameArr[13]);
            if (sTLongHexNumber2 == null) {
                sTLongHexNumber2 = (STLongHexNumber) get_store().add_attribute_user(qNameArr[13]);
            }
            sTLongHexNumber2.set(sTLongHexNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptProviderTypeExtSource(STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STString sTString2 = (STString) typeStore.find_attribute_user(qNameArr[14]);
            if (sTString2 == null) {
                sTString2 = (STString) get_store().add_attribute_user(qNameArr[14]);
            }
            sTString2.set(sTString);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetCryptSpinCount(STDecimalNumber sTDecimalNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumber sTDecimalNumber2 = (STDecimalNumber) typeStore.find_attribute_user(qNameArr[9]);
            if (sTDecimalNumber2 == null) {
                sTDecimalNumber2 = (STDecimalNumber) get_store().add_attribute_user(qNameArr[9]);
            }
            sTDecimalNumber2.set(sTDecimalNumber);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetHash(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_attribute_user(qNameArr[15]);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_attribute_user(qNameArr[15]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetHashValue(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetRecommended(STOnOff sTOnOff) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STOnOff sTOnOff2 = (STOnOff) typeStore.find_attribute_user(qNameArr[0]);
            if (sTOnOff2 == null) {
                sTOnOff2 = (STOnOff) get_store().add_attribute_user(qNameArr[0]);
            }
            sTOnOff2.set(sTOnOff);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetSalt(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_attribute_user(qNameArr[16]);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_attribute_user(qNameArr[16]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetSaltValue(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWriteProtection
    public void xsetSpinCount(STDecimalNumber sTDecimalNumber) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDecimalNumber sTDecimalNumber2 = (STDecimalNumber) typeStore.find_attribute_user(qNameArr[4]);
            if (sTDecimalNumber2 == null) {
                sTDecimalNumber2 = (STDecimalNumber) get_store().add_attribute_user(qNameArr[4]);
            }
            sTDecimalNumber2.set(sTDecimalNumber);
        }
    }
}
