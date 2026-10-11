package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.sunia.HTREnginev2.jo7;
import com.sunia.HTREnginev2.ko7;
import com.sunia.HTREnginev2.ld1;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STSqref;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STUnsignedShortHex;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTProtectedRangeImpl;

/* loaded from: classes15.dex */
public class CTProtectedRangeImpl extends XmlComplexContentImpl implements CTProtectedRange {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "securityDescriptor"), new QName("", "password"), new QName("", "sqref"), new QName("", "name"), new QName("", "securityDescriptor"), new QName("", "algorithmName"), new QName("", "hashValue"), new QName("", "saltValue"), new QName("", "spinCount")};
    private static final long serialVersionUID = 1;

    public CTProtectedRangeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getSecurityDescriptorArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetSecurityDescriptorArray$1(int i) {
        return new XmlString[i];
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlString addNewSecurityDescriptor() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void addSecurityDescriptor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public String getAlgorithmName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public byte[] getHashValue() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public byte[] getPassword() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public byte[] getSaltValue() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public String getSecurityDescriptor2() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public String[] getSecurityDescriptorArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.fo7
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getSecurityDescriptorArray$0;
                lambda$getSecurityDescriptorArray$0 = CTProtectedRangeImpl.lambda$getSecurityDescriptorArray$0(i);
                return lambda$getSecurityDescriptorArray$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public List<String> getSecurityDescriptorList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.go7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTProtectedRangeImpl.this.getSecurityDescriptorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ho7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTProtectedRangeImpl.this.setSecurityDescriptorArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.io7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTProtectedRangeImpl.this.insertSecurityDescriptor(((Integer) obj).intValue(), (String) obj2);
                }
            }, new jo7(this), new ko7(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public long getSpinCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public List getSqref() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlString insertNewSecurityDescriptor(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void insertSecurityDescriptor(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public boolean isSetAlgorithmName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public boolean isSetHashValue() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public boolean isSetPassword() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public boolean isSetSaltValue() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public boolean isSetSecurityDescriptor2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public boolean isSetSpinCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void removeSecurityDescriptor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setAlgorithmName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setHashValue(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setPassword(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setSaltValue(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setSecurityDescriptor2(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setSecurityDescriptorArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setSpinCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setSqref(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public int sizeOfSecurityDescriptorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void unsetAlgorithmName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void unsetHashValue() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void unsetPassword() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void unsetSaltValue() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void unsetSecurityDescriptor2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void unsetSpinCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public STXstring xgetAlgorithmName() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlBase64Binary xgetHashValue() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public STXstring xgetName() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public STUnsignedShortHex xgetPassword() {
        STUnsignedShortHex sTUnsignedShortHex;
        synchronized (monitor()) {
            check_orphaned();
            sTUnsignedShortHex = (STUnsignedShortHex) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTUnsignedShortHex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlBase64Binary xgetSaltValue() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlString xgetSecurityDescriptor2() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlString[] xgetSecurityDescriptorArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.oo7
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetSecurityDescriptorArray$1;
                lambda$xgetSecurityDescriptorArray$1 = CTProtectedRangeImpl.lambda$xgetSecurityDescriptorArray$1(i);
                return lambda$xgetSecurityDescriptorArray$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public List<XmlString> xgetSecurityDescriptorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lo7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTProtectedRangeImpl.this.xgetSecurityDescriptorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mo7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTProtectedRangeImpl.this.xsetSecurityDescriptorArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.no7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTProtectedRangeImpl.this.insertNewSecurityDescriptor(((Integer) obj).intValue());
                }
            }, new jo7(this), new ko7(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlUnsignedInt xgetSpinCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public STSqref xgetSqref() {
        STSqref sTSqref;
        synchronized (monitor()) {
            check_orphaned();
            sTSqref = (STSqref) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTSqref;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetAlgorithmName(STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STXstring sTXstring2 = (STXstring) typeStore.find_attribute_user(qNameArr[5]);
            if (sTXstring2 == null) {
                sTXstring2 = (STXstring) get_store().add_attribute_user(qNameArr[5]);
            }
            sTXstring2.set(sTXstring);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetHashValue(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetName(STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STXstring sTXstring2 = (STXstring) typeStore.find_attribute_user(qNameArr[3]);
            if (sTXstring2 == null) {
                sTXstring2 = (STXstring) get_store().add_attribute_user(qNameArr[3]);
            }
            sTXstring2.set(sTXstring);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetPassword(STUnsignedShortHex sTUnsignedShortHex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnsignedShortHex sTUnsignedShortHex2 = (STUnsignedShortHex) typeStore.find_attribute_user(qNameArr[1]);
            if (sTUnsignedShortHex2 == null) {
                sTUnsignedShortHex2 = (STUnsignedShortHex) get_store().add_attribute_user(qNameArr[1]);
            }
            sTUnsignedShortHex2.set(sTUnsignedShortHex);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetSaltValue(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetSecurityDescriptor2(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetSecurityDescriptorArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetSpinCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetSqref(STSqref sTSqref) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSqref sTSqref2 = (STSqref) typeStore.find_attribute_user(qNameArr[2]);
            if (sTSqref2 == null) {
                sTSqref2 = (STSqref) get_store().add_attribute_user(qNameArr[2]);
            }
            sTSqref2.set(sTSqref);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public String getSecurityDescriptorArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public XmlString xgetSecurityDescriptorArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void setSecurityDescriptorArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange
    public void xsetSecurityDescriptorArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
