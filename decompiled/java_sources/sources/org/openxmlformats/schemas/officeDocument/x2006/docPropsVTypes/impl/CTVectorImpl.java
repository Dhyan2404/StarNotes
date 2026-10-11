package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import com.sunia.HTREnginev2.ab0;
import com.sunia.HTREnginev2.cfd;
import com.sunia.HTREnginev2.dfd;
import com.sunia.HTREnginev2.dgd;
import com.sunia.HTREnginev2.ebd;
import com.sunia.HTREnginev2.egd;
import com.sunia.HTREnginev2.fad;
import com.sunia.HTREnginev2.fbd;
import com.sunia.HTREnginev2.hdd;
import com.sunia.HTREnginev2.idd;
import com.sunia.HTREnginev2.ied;
import com.sunia.HTREnginev2.ifd;
import com.sunia.HTREnginev2.igd;
import com.sunia.HTREnginev2.jfd;
import com.sunia.HTREnginev2.jgd;
import com.sunia.HTREnginev2.ked;
import com.sunia.HTREnginev2.lad;
import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.led;
import com.sunia.HTREnginev2.mad;
import com.sunia.HTREnginev2.ndd;
import com.sunia.HTREnginev2.nfd;
import com.sunia.HTREnginev2.odd;
import com.sunia.HTREnginev2.ofd;
import com.sunia.HTREnginev2.ol1;
import com.sunia.HTREnginev2.pbd;
import com.sunia.HTREnginev2.ped;
import com.sunia.HTREnginev2.qad;
import com.sunia.HTREnginev2.qbd;
import com.sunia.HTREnginev2.qed;
import com.sunia.HTREnginev2.tcd;
import com.sunia.HTREnginev2.ved;
import com.sunia.HTREnginev2.wed;
import com.sunia.HTREnginev2.xdd;
import com.sunia.HTREnginev2.xfd;
import com.sunia.HTREnginev2.yad;
import com.sunia.HTREnginev2.ydd;
import com.sunia.HTREnginev2.yfd;
import com.sunia.HTREnginev2.zad;
import com.sunia.HTREnginev2.zcd;
import com.sunia.HTREnginev2.zdd;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedLong;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVariant;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STCy;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STError;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STVectorBaseType;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl.CTVectorImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes14.dex */
public class CTVectorImpl extends XmlComplexContentImpl implements CTVector {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "variant"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i1"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i2"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i8"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui1"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui2"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui8"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "r4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "r8"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "lpstr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "lpwstr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "bstr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "date"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "filetime"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "bool"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "cy"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "error"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "clsid"), new QName("", "baseType"), new QName("", "size")};
    private static final long serialVersionUID = 1;

    public CTVectorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getBstrArray$15(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getClsidArray$26(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getCyArray$22(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Calendar[] lambda$getDateArray$17(int i) {
        return new Calendar[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getErrorArray$24(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Calendar[] lambda$getFiletimeArray$19(int i) {
        return new Calendar[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getLpstrArray$11(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getLpwstrArray$13(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BigInteger[] lambda$getUi8Array$7(int i) {
        return new BigInteger[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlBoolean[] lambda$xgetBoolArray$21(int i) {
        return new XmlBoolean[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetBstrArray$16(int i) {
        return new XmlString[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STGuid[] lambda$xgetClsidArray$27(int i) {
        return new STGuid[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STCy[] lambda$xgetCyArray$23(int i) {
        return new STCy[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlDateTime[] lambda$xgetDateArray$18(int i) {
        return new XmlDateTime[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STError[] lambda$xgetErrorArray$25(int i) {
        return new STError[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlDateTime[] lambda$xgetFiletimeArray$20(int i) {
        return new XmlDateTime[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlByte[] lambda$xgetI1Array$0(int i) {
        return new XmlByte[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlShort[] lambda$xgetI2Array$1(int i) {
        return new XmlShort[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlInt[] lambda$xgetI4Array$2(int i) {
        return new XmlInt[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlLong[] lambda$xgetI8Array$3(int i) {
        return new XmlLong[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetLpstrArray$12(int i) {
        return new XmlString[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetLpwstrArray$14(int i) {
        return new XmlString[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlFloat[] lambda$xgetR4Array$9(int i) {
        return new XmlFloat[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlDouble[] lambda$xgetR8Array$10(int i) {
        return new XmlDouble[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlUnsignedByte[] lambda$xgetUi1Array$4(int i) {
        return new XmlUnsignedByte[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlUnsignedShort[] lambda$xgetUi2Array$5(int i) {
        return new XmlUnsignedShort[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlUnsignedInt[] lambda$xgetUi4Array$6(int i) {
        return new XmlUnsignedInt[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlUnsignedLong[] lambda$xgetUi8Array$8(int i) {
        return new XmlUnsignedLong[i];
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addBool(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[16])).setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addBstr(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[13])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addClsid(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[19])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addCy(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[17])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addDate(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[14])).setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addError(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[18])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addFiletime(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[15])).setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addI1(byte b) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[1])).setByteValue(b);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addI2(short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[2])).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addI4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[3])).setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addI8(long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[4])).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addLpstr(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[11])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addLpwstr(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[12])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlBoolean addNewBool() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString addNewBstr() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STGuid addNewClsid() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return sTGuid;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STCy addNewCy() {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime addNewDate() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STError addNewError() {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime addNewFiletime() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlByte addNewI1() {
        XmlByte xmlByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlByte = (XmlByte) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return xmlByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlShort addNewI2() {
        XmlShort xmlShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlShort = (XmlShort) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return xmlShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlInt addNewI4() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlLong addNewI8() {
        XmlLong xmlLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlLong = (XmlLong) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return xmlLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString addNewLpstr() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString addNewLpwstr() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlFloat addNewR4() {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDouble addNewR8() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            xmlDouble = (XmlDouble) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedByte addNewUi1() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return xmlUnsignedByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedShort addNewUi2() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedInt addNewUi4() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedLong addNewUi8() {
        XmlUnsignedLong xmlUnsignedLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedLong = (XmlUnsignedLong) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return xmlUnsignedLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public CTVariant addNewVariant() {
        CTVariant cTVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTVariant = (CTVariant) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVariant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addR4(float f) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[9])).setFloatValue(f);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addR8(double d) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[10])).setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addUi1(short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[5])).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addUi2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[6])).setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addUi4(long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[7])).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void addUi8(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[8])).setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STVectorBaseType.Enum getBaseType() {
        STVectorBaseType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[20]);
            r3 = simpleValue == null ? null : (STVectorBaseType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public boolean[] getBoolArray() {
        return getBooleanArray(PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Boolean> getBoolList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.dcd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Boolean.valueOf(CTVectorImpl.this.getBoolArray(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ecd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setBoolArray(((Integer) obj).intValue(), ((Boolean) obj2).booleanValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fcd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertBool(((Integer) obj).intValue(), ((Boolean) obj2).booleanValue());
                }
            }, new ped(this), new qed(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String[] getBstrArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[13], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.ted
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getBstrArray$15;
                lambda$getBstrArray$15 = CTVectorImpl.lambda$getBstrArray$15(i);
                return lambda$getBstrArray$15;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<String> getBstrList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.fgd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getBstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ggd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setBstrArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hgd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertBstr(((Integer) obj).intValue(), (String) obj2);
                }
            }, new igd(this), new jgd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String[] getClsidArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[19], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.tdd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getClsidArray$26;
                lambda$getClsidArray$26 = CTVectorImpl.lambda$getClsidArray$26(i);
                return lambda$getClsidArray$26;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<String> getClsidList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ead
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getClsidArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setClsidArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.had
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertClsid(((Integer) obj).intValue(), (String) obj2);
                }
            }, new xfd(this), new yfd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String[] getCyArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[17], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.yed
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getCyArray$22;
                lambda$getCyArray$22 = CTVectorImpl.lambda$getCyArray$22(i);
                return lambda$getCyArray$22;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<String> getCyList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.red
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getCyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sed
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setCyArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ued
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertCy(((Integer) obj).intValue(), (String) obj2);
                }
            }, new ved(this), new wed(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public Calendar[] getDateArray() {
        return (Calendar[]) getObjectArray(PROPERTY_QNAME[14], new ab0(), new IntFunction() { // from class: com.sunia.HTREnginev2.sdd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                Calendar[] lambda$getDateArray$17;
                lambda$getDateArray$17 = CTVectorImpl.lambda$getDateArray$17(i);
                return lambda$getDateArray$17;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Calendar> getDateList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.kfd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getDateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lfd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setDateArray(((Integer) obj).intValue(), (Calendar) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mfd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertDate(((Integer) obj).intValue(), (Calendar) obj2);
                }
            }, new nfd(this), new ofd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String[] getErrorArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[18], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.aed
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getErrorArray$24;
                lambda$getErrorArray$24 = CTVectorImpl.lambda$getErrorArray$24(i);
                return lambda$getErrorArray$24;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<String> getErrorList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.iad
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getErrorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setErrorArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertError(((Integer) obj).intValue(), (String) obj2);
                }
            }, new lad(this), new mad(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public Calendar[] getFiletimeArray() {
        return (Calendar[]) getObjectArray(PROPERTY_QNAME[15], new ab0(), new IntFunction() { // from class: com.sunia.HTREnginev2.efd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                Calendar[] lambda$getFiletimeArray$19;
                lambda$getFiletimeArray$19 = CTVectorImpl.lambda$getFiletimeArray$19(i);
                return lambda$getFiletimeArray$19;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Calendar> getFiletimeList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.zed
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getFiletimeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.afd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setFiletimeArray(((Integer) obj).intValue(), (Calendar) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bfd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertFiletime(((Integer) obj).intValue(), (Calendar) obj2);
                }
            }, new cfd(this), new dfd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public byte[] getI1Array() {
        return getByteArray(PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Byte> getI1List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ubd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Byte.valueOf(CTVectorImpl.this.getI1Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setI1Array(((Integer) obj).intValue(), ((Byte) obj2).byteValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertI1(((Integer) obj).intValue(), ((Byte) obj2).byteValue());
                }
            }, new dgd(this), new egd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public short[] getI2Array() {
        return getShortArray(PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Short> getI2List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.lbd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Short.valueOf(CTVectorImpl.this.getI2Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setI2Array(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.obd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertI2(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new pbd(this), new qbd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int[] getI4Array() {
        return getIntArray(PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Integer> getI4List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ged
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(CTVectorImpl.this.getI4Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hed
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setI4Array(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jed
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertI4(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new ked(this), new led(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public long[] getI8Array() {
        return getLongArray(PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Long> getI8List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.vad
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(CTVectorImpl.this.getI8Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setI8Array(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertI8(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new yad(this), new zad(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String[] getLpstrArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[11], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.hbd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getLpstrArray$11;
                lambda$getLpstrArray$11 = CTVectorImpl.lambda$getLpstrArray$11(i);
                return lambda$getLpstrArray$11;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<String> getLpstrList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.aad
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getLpstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setLpstrArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertLpstr(((Integer) obj).intValue(), (String) obj2);
                }
            }, new ndd(this), new odd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String[] getLpwstrArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[12], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.xcd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getLpwstrArray$13;
                lambda$getLpwstrArray$13 = CTVectorImpl.lambda$getLpwstrArray$13(i);
                return lambda$getLpwstrArray$13;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<String> getLpwstrList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ocd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getLpwstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pcd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setLpwstrArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qcd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertLpwstr(((Integer) obj).intValue(), (String) obj2);
                }
            }, new ifd(this), new jfd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public float[] getR4Array() {
        return getFloatArray(PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Float> getR4List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.udd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Float.valueOf(CTVectorImpl.this.getR4Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setR4Array(((Integer) obj).intValue(), ((Float) obj2).floatValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertR4(((Integer) obj).intValue(), ((Float) obj2).floatValue());
                }
            }, new ydd(this), new zdd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public double[] getR8Array() {
        return getDoubleArray(PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Double> getR8List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.edd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Double.valueOf(CTVectorImpl.this.getR8Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setR8Array(((Integer) obj).intValue(), ((Double) obj2).doubleValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertR8(((Integer) obj).intValue(), ((Double) obj2).doubleValue());
                }
            }, new hdd(this), new idd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public long getSize() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[21]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public short[] getUi1Array() {
        return getShortArray(PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Short> getUi1List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.add
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Short.valueOf(CTVectorImpl.this.getUi1Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setUi1Array(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ddd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertUi1(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new xdd(this), new ied(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int[] getUi2Array() {
        return getIntArray(PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Integer> getUi2List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.agd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(CTVectorImpl.this.getUi2Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lgd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setUi2Array(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u9d
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertUi2(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new fad(this), new qad(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public long[] getUi4Array() {
        return getLongArray(PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<Long> getUi4List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.nad
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(CTVectorImpl.this.getUi4Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setUi4Array(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertUi4(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new tcd(this), new zcd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public BigInteger[] getUi8Array() {
        return (BigInteger[]) getObjectArray(PROPERTY_QNAME[8], new ol1(), new IntFunction() { // from class: com.sunia.HTREnginev2.kcd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                BigInteger[] lambda$getUi8Array$7;
                lambda$getUi8Array$7 = CTVectorImpl.lambda$getUi8Array$7(i);
                return lambda$getUi8Array$7;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<BigInteger> getUi8List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.abd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getUi8Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setUi8Array(((Integer) obj).intValue(), (BigInteger) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.insertUi8(((Integer) obj).intValue(), (BigInteger) obj2);
                }
            }, new ebd(this), new fbd(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public CTVariant[] getVariantArray() {
        return (CTVariant[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTVariant[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<CTVariant> getVariantList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.getVariantArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w9d
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.setVariantArray(((Integer) obj).intValue(), (CTVariant) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewVariant(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y9d
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTVectorImpl.this.removeVariant(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z9d
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTVectorImpl.this.sizeOfVariantArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertBool(int i, boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[16], i)).setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertBstr(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[13], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertClsid(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[19], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertCy(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[17], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertDate(int i, Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[14], i)).setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertError(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[18], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertFiletime(int i, Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[15], i)).setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertI1(int i, byte b) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[1], i)).setByteValue(b);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertI2(int i, short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[2], i)).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertI4(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[3], i)).setIntValue(i2);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertI8(int i, long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[4], i)).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertLpstr(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[11], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertLpwstr(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[12], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlBoolean insertNewBool(int i) {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString insertNewBstr(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STGuid insertNewClsid(int i) {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return sTGuid;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STCy insertNewCy(int i) {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime insertNewDate(int i) {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STError insertNewError(int i) {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime insertNewFiletime(int i) {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlByte insertNewI1(int i) {
        XmlByte xmlByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlByte = (XmlByte) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return xmlByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlShort insertNewI2(int i) {
        XmlShort xmlShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlShort = (XmlShort) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return xmlShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlInt insertNewI4(int i) {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlLong insertNewI8(int i) {
        XmlLong xmlLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlLong = (XmlLong) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return xmlLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString insertNewLpstr(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString insertNewLpwstr(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlFloat insertNewR4(int i) {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDouble insertNewR8(int i) {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            xmlDouble = (XmlDouble) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedByte insertNewUi1(int i) {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return xmlUnsignedByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedShort insertNewUi2(int i) {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedInt insertNewUi4(int i) {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedLong insertNewUi8(int i) {
        XmlUnsignedLong xmlUnsignedLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedLong = (XmlUnsignedLong) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return xmlUnsignedLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public CTVariant insertNewVariant(int i) {
        CTVariant cTVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTVariant = (CTVariant) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTVariant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertR4(int i, float f) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[9], i)).setFloatValue(f);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertR8(int i, double d) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[10], i)).setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertUi1(int i, short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[5], i)).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertUi2(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[6], i)).setIntValue(i2);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertUi4(int i, long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[7], i)).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void insertUi8(int i, BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[8], i)).setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeBool(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeBstr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeClsid(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeCy(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeDate(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeError(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeFiletime(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeI1(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeI2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeI4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeI8(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeLpstr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeLpwstr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeR4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeR8(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeUi1(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeUi2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeUi4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeUi8(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void removeVariant(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setBaseType(STVectorBaseType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[20]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[20]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setBoolArray(boolean[] zArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(zArr, PROPERTY_QNAME[16]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setBstrArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setClsidArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[19]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setCyArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[17]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setDateArray(Calendar[] calendarArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(calendarArr, PROPERTY_QNAME[14]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setErrorArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[18]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setFiletimeArray(Calendar[] calendarArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(calendarArr, PROPERTY_QNAME[15]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI1Array(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI2Array(short[] sArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI4Array(int[] iArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(iArr, PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI8Array(long[] jArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(jArr, PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setLpstrArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setLpwstrArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setR4Array(float[] fArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(fArr, PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setR8Array(double[] dArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(dArr, PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setSize(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[21]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[21]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi1Array(short[] sArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sArr, PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi2Array(int[] iArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(iArr, PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi4Array(long[] jArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(jArr, PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi8Array(BigInteger[] bigIntegerArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bigIntegerArr, PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setVariantArray(CTVariant[] cTVariantArr) {
        check_orphaned();
        arraySetterHelper(cTVariantArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfBoolArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfBstrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfClsidArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfCyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfDateArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfErrorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfFiletimeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfI1Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfI2Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfI4Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfI8Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfLpstrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfLpwstrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfR4Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfR8Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfUi1Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfUi2Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfUi4Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfUi8Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int sizeOfVariantArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STVectorBaseType xgetBaseType() {
        STVectorBaseType sTVectorBaseType;
        synchronized (monitor()) {
            check_orphaned();
            sTVectorBaseType = (STVectorBaseType) get_store().find_attribute_user(PROPERTY_QNAME[20]);
        }
        return sTVectorBaseType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlBoolean[] xgetBoolArray() {
        return (XmlBoolean[]) xgetArray(PROPERTY_QNAME[16], new IntFunction() { // from class: com.sunia.HTREnginev2.bed
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlBoolean[] lambda$xgetBoolArray$21;
                lambda$xgetBoolArray$21 = CTVectorImpl.lambda$xgetBoolArray$21(i);
                return lambda$xgetBoolArray$21;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlBoolean> xgetBoolList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.med
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetBoolArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ned
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetBoolArray(((Integer) obj).intValue(), (XmlBoolean) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oed
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewBool(((Integer) obj).intValue());
                }
            }, new ped(this), new qed(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString[] xgetBstrArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[13], new IntFunction() { // from class: com.sunia.HTREnginev2.ccd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetBstrArray$16;
                lambda$xgetBstrArray$16 = CTVectorImpl.lambda$xgetBstrArray$16(i);
                return lambda$xgetBstrArray$16;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlString> xgetBstrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rad
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetBstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sad
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetBstrArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tad
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewBstr(((Integer) obj).intValue());
                }
            }, new igd(this), new jgd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STGuid[] xgetClsidArray() {
        return (STGuid[]) xgetArray(PROPERTY_QNAME[19], new IntFunction() { // from class: com.sunia.HTREnginev2.bbd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STGuid[] lambda$xgetClsidArray$27;
                lambda$xgetClsidArray$27 = CTVectorImpl.lambda$xgetClsidArray$27(i);
                return lambda$xgetClsidArray$27;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<STGuid> xgetClsidList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ufd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetClsidArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vfd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetClsidArray(((Integer) obj).intValue(), (STGuid) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wfd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewClsid(((Integer) obj).intValue());
                }
            }, new xfd(this), new yfd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STCy[] xgetCyArray() {
        return (STCy[]) xgetArray(PROPERTY_QNAME[17], new IntFunction() { // from class: com.sunia.HTREnginev2.gbd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STCy[] lambda$xgetCyArray$23;
                lambda$xgetCyArray$23 = CTVectorImpl.lambda$xgetCyArray$23(i);
                return lambda$xgetCyArray$23;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<STCy> xgetCyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetCyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l9d
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetCyArray(((Integer) obj).intValue(), (STCy) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewCy(((Integer) obj).intValue());
                }
            }, new ved(this), new wed(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime[] xgetDateArray() {
        return (XmlDateTime[]) xgetArray(PROPERTY_QNAME[14], new IntFunction() { // from class: com.sunia.HTREnginev2.xed
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlDateTime[] lambda$xgetDateArray$18;
                lambda$xgetDateArray$18 = CTVectorImpl.lambda$xgetDateArray$18(i);
                return lambda$xgetDateArray$18;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlDateTime> xgetDateList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetDateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s9d
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetDateArray(((Integer) obj).intValue(), (XmlDateTime) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewDate(((Integer) obj).intValue());
                }
            }, new nfd(this), new ofd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STError[] xgetErrorArray() {
        return (STError[]) xgetArray(PROPERTY_QNAME[18], new IntFunction() { // from class: com.sunia.HTREnginev2.rfd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STError[] lambda$xgetErrorArray$25;
                lambda$xgetErrorArray$25 = CTVectorImpl.lambda$xgetErrorArray$25(i);
                return lambda$xgetErrorArray$25;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<STError> xgetErrorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rbd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetErrorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetErrorArray(((Integer) obj).intValue(), (STError) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tbd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewError(((Integer) obj).intValue());
                }
            }, new lad(this), new mad(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime[] xgetFiletimeArray() {
        return (XmlDateTime[]) xgetArray(PROPERTY_QNAME[15], new IntFunction() { // from class: com.sunia.HTREnginev2.fed
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlDateTime[] lambda$xgetFiletimeArray$20;
                lambda$xgetFiletimeArray$20 = CTVectorImpl.lambda$xgetFiletimeArray$20(i);
                return lambda$xgetFiletimeArray$20;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlDateTime> xgetFiletimeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetFiletimeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p9d
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetFiletimeArray(((Integer) obj).intValue(), (XmlDateTime) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.q9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewFiletime(((Integer) obj).intValue());
                }
            }, new cfd(this), new dfd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlByte[] xgetI1Array() {
        return (XmlByte[]) xgetArray(PROPERTY_QNAME[1], new IntFunction() { // from class: com.sunia.HTREnginev2.uad
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlByte[] lambda$xgetI1Array$0;
                lambda$xgetI1Array$0 = CTVectorImpl.lambda$xgetI1Array$0(i);
                return lambda$xgetI1Array$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlByte> xgetI1List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zfd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetI1Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bgd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetI1Array(((Integer) obj).intValue(), (XmlByte) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cgd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewI1(((Integer) obj).intValue());
                }
            }, new dgd(this), new egd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlShort[] xgetI2Array() {
        return (XmlShort[]) xgetArray(PROPERTY_QNAME[2], new IntFunction() { // from class: com.sunia.HTREnginev2.dad
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlShort[] lambda$xgetI2Array$1;
                lambda$xgetI2Array$1 = CTVectorImpl.lambda$xgetI2Array$1(i);
                return lambda$xgetI2Array$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlShort> xgetI2List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gcd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetI2Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hcd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetI2Array(((Integer) obj).intValue(), (XmlShort) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jcd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewI2(((Integer) obj).intValue());
                }
            }, new pbd(this), new qbd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlInt[] xgetI4Array() {
        return (XmlInt[]) xgetArray(PROPERTY_QNAME[3], new IntFunction() { // from class: com.sunia.HTREnginev2.sfd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlInt[] lambda$xgetI4Array$2;
                lambda$xgetI4Array$2 = CTVectorImpl.lambda$xgetI4Array$2(i);
                return lambda$xgetI4Array$2;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlInt> xgetI4List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ybd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetI4Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetI4Array(((Integer) obj).intValue(), (XmlInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.acd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewI4(((Integer) obj).intValue());
                }
            }, new ked(this), new led(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlLong[] xgetI8Array() {
        return (XmlLong[]) xgetArray(PROPERTY_QNAME[4], new IntFunction() { // from class: com.sunia.HTREnginev2.rcd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlLong[] lambda$xgetI8Array$3;
                lambda$xgetI8Array$3 = CTVectorImpl.lambda$xgetI8Array$3(i);
                return lambda$xgetI8Array$3;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlLong> xgetI8List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.scd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetI8Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ucd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetI8Array(((Integer) obj).intValue(), (XmlLong) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vcd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewI8(((Integer) obj).intValue());
                }
            }, new yad(this), new zad(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString[] xgetLpstrArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[11], new IntFunction() { // from class: com.sunia.HTREnginev2.ycd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetLpstrArray$12;
                lambda$xgetLpstrArray$12 = CTVectorImpl.lambda$xgetLpstrArray$12(i);
                return lambda$xgetLpstrArray$12;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlString> xgetLpstrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jdd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetLpstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetLpstrArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ldd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewLpstr(((Integer) obj).intValue());
                }
            }, new ndd(this), new odd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString[] xgetLpwstrArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[12], new IntFunction() { // from class: com.sunia.HTREnginev2.tfd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetLpwstrArray$14;
                lambda$xgetLpwstrArray$14 = CTVectorImpl.lambda$xgetLpwstrArray$14(i);
                return lambda$xgetLpwstrArray$14;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlString> xgetLpwstrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ffd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetLpwstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gfd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetLpwstrArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hfd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewLpwstr(((Integer) obj).intValue());
                }
            }, new ifd(this), new jfd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlFloat[] xgetR4Array() {
        return (XmlFloat[]) xgetArray(PROPERTY_QNAME[9], new IntFunction() { // from class: com.sunia.HTREnginev2.kgd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlFloat[] lambda$xgetR4Array$9;
                lambda$xgetR4Array$9 = CTVectorImpl.lambda$xgetR4Array$9(i);
                return lambda$xgetR4Array$9;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlFloat> xgetR4List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lcd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetR4Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mcd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetR4Array(((Integer) obj).intValue(), (XmlFloat) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ncd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewR4(((Integer) obj).intValue());
                }
            }, new ydd(this), new zdd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDouble[] xgetR8Array() {
        return (XmlDouble[]) xgetArray(PROPERTY_QNAME[10], new IntFunction() { // from class: com.sunia.HTREnginev2.wcd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlDouble[] lambda$xgetR8Array$10;
                lambda$xgetR8Array$10 = CTVectorImpl.lambda$xgetR8Array$10(i);
                return lambda$xgetR8Array$10;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlDouble> xgetR8List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pdd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetR8Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetR8Array(((Integer) obj).intValue(), (XmlDouble) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rdd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewR8(((Integer) obj).intValue());
                }
            }, new hdd(this), new idd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedInt xgetSize() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[21]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedByte[] xgetUi1Array() {
        return (XmlUnsignedByte[]) xgetArray(PROPERTY_QNAME[5], new IntFunction() { // from class: com.sunia.HTREnginev2.pfd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedByte[] lambda$xgetUi1Array$4;
                lambda$xgetUi1Array$4 = CTVectorImpl.lambda$xgetUi1Array$4(i);
                return lambda$xgetUi1Array$4;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlUnsignedByte> xgetUi1List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j9d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetUi1Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bdd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetUi1Array(((Integer) obj).intValue(), (XmlUnsignedByte) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mdd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewUi1(((Integer) obj).intValue());
                }
            }, new xdd(this), new ied(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedShort[] xgetUi2Array() {
        return (XmlUnsignedShort[]) xgetArray(PROPERTY_QNAME[6], new IntFunction() { // from class: com.sunia.HTREnginev2.bcd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedShort[] lambda$xgetUi2Array$5;
                lambda$xgetUi2Array$5 = CTVectorImpl.lambda$xgetUi2Array$5(i);
                return lambda$xgetUi2Array$5;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlUnsignedShort> xgetUi2List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ced
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetUi2Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ded
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetUi2Array(((Integer) obj).intValue(), (XmlUnsignedShort) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eed
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewUi2(((Integer) obj).intValue());
                }
            }, new fad(this), new qad(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedInt[] xgetUi4Array() {
        return (XmlUnsignedInt[]) xgetArray(PROPERTY_QNAME[7], new IntFunction() { // from class: com.sunia.HTREnginev2.n9d
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedInt[] lambda$xgetUi4Array$6;
                lambda$xgetUi4Array$6 = CTVectorImpl.lambda$xgetUi4Array$6(i);
                return lambda$xgetUi4Array$6;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlUnsignedInt> xgetUi4List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mbd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetUi4Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetUi4Array(((Integer) obj).intValue(), (XmlUnsignedInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.icd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewUi4(((Integer) obj).intValue());
                }
            }, new tcd(this), new zcd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedLong[] xgetUi8Array() {
        return (XmlUnsignedLong[]) xgetArray(PROPERTY_QNAME[8], new IntFunction() { // from class: com.sunia.HTREnginev2.qfd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedLong[] lambda$xgetUi8Array$8;
                lambda$xgetUi8Array$8 = CTVectorImpl.lambda$xgetUi8Array$8(i);
                return lambda$xgetUi8Array$8;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public List<XmlUnsignedLong> xgetUi8List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ibd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.xgetUi8Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jbd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVectorImpl.this.xsetUi8Array(((Integer) obj).intValue(), (XmlUnsignedLong) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kbd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVectorImpl.this.insertNewUi8(((Integer) obj).intValue());
                }
            }, new ebd(this), new fbd(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetBaseType(STVectorBaseType sTVectorBaseType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STVectorBaseType sTVectorBaseType2 = (STVectorBaseType) typeStore.find_attribute_user(qNameArr[20]);
            if (sTVectorBaseType2 == null) {
                sTVectorBaseType2 = (STVectorBaseType) get_store().add_attribute_user(qNameArr[20]);
            }
            sTVectorBaseType2.set(sTVectorBaseType);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetBoolArray(XmlBoolean[] xmlBooleanArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlBooleanArr, PROPERTY_QNAME[16]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetBstrArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetClsidArray(STGuid[] sTGuidArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTGuidArr, PROPERTY_QNAME[19]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetCyArray(STCy[] sTCyArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTCyArr, PROPERTY_QNAME[17]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetDateArray(XmlDateTime[] xmlDateTimeArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlDateTimeArr, PROPERTY_QNAME[14]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetErrorArray(STError[] sTErrorArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTErrorArr, PROPERTY_QNAME[18]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetFiletimeArray(XmlDateTime[] xmlDateTimeArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlDateTimeArr, PROPERTY_QNAME[15]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI1Array(XmlByte[] xmlByteArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlByteArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI2Array(XmlShort[] xmlShortArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlShortArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI4Array(XmlInt[] xmlIntArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlIntArr, PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI8Array(XmlLong[] xmlLongArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlLongArr, PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetLpstrArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetLpwstrArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetR4Array(XmlFloat[] xmlFloatArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlFloatArr, PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetR8Array(XmlDouble[] xmlDoubleArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlDoubleArr, PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetSize(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[21]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[21]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi1Array(XmlUnsignedByte[] xmlUnsignedByteArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedByteArr, PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi2Array(XmlUnsignedShort[] xmlUnsignedShortArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedShortArr, PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi4Array(XmlUnsignedInt[] xmlUnsignedIntArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedIntArr, PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi8Array(XmlUnsignedLong[] xmlUnsignedLongArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedLongArr, PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public boolean getBoolArray(int i) {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (simpleValue != null) {
                booleanValue = simpleValue.getBooleanValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String getBstrArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String getClsidArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String getCyArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public Calendar getDateArray(int i) {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (simpleValue != null) {
                calendarValue = simpleValue.getCalendarValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return calendarValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String getErrorArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public Calendar getFiletimeArray(int i) {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (simpleValue != null) {
                calendarValue = simpleValue.getCalendarValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return calendarValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public byte getI1Array(int i) {
        byte byteValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                byteValue = simpleValue.getByteValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return byteValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public short getI2Array(int i) {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (simpleValue != null) {
                shortValue = simpleValue.getShortValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return shortValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int getI4Array(int i) {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (simpleValue != null) {
                intValue = simpleValue.getIntValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public long getI8Array(int i) {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (simpleValue != null) {
                longValue = simpleValue.getLongValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String getLpstrArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public String getLpwstrArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public float getR4Array(int i) {
        float floatValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (simpleValue != null) {
                floatValue = simpleValue.getFloatValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return floatValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public double getR8Array(int i) {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (simpleValue != null) {
                doubleValue = simpleValue.getDoubleValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public short getUi1Array(int i) {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (simpleValue != null) {
                shortValue = simpleValue.getShortValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return shortValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public int getUi2Array(int i) {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (simpleValue != null) {
                intValue = simpleValue.getIntValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public long getUi4Array(int i) {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (simpleValue != null) {
                longValue = simpleValue.getLongValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public BigInteger getUi8Array(int i) {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (simpleValue != null) {
                bigIntegerValue = simpleValue.getBigIntegerValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public CTVariant getVariantArray(int i) {
        CTVariant cTVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTVariant = (CTVariant) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTVariant == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTVariant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlBoolean xgetBoolArray(int i) {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (xmlBoolean == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString xgetBstrArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STGuid xgetClsidArray(int i) {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (sTGuid == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTGuid;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STCy xgetCyArray(int i) {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (sTCy == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime xgetDateArray(int i) {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (xmlDateTime == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public STError xgetErrorArray(int i) {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (sTError == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDateTime xgetFiletimeArray(int i) {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (xmlDateTime == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlByte xgetI1Array(int i) {
        XmlByte xmlByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlByte = (XmlByte) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (xmlByte == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlShort xgetI2Array(int i) {
        XmlShort xmlShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlShort = (XmlShort) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (xmlShort == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlInt xgetI4Array(int i) {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (xmlInt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlLong xgetI8Array(int i) {
        XmlLong xmlLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlLong = (XmlLong) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (xmlLong == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString xgetLpstrArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlString xgetLpwstrArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlFloat xgetR4Array(int i) {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (xmlFloat == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlDouble xgetR8Array(int i) {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            xmlDouble = (XmlDouble) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (xmlDouble == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedByte xgetUi1Array(int i) {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (xmlUnsignedByte == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlUnsignedByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedShort xgetUi2Array(int i) {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (xmlUnsignedShort == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedInt xgetUi4Array(int i) {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (xmlUnsignedInt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public XmlUnsignedLong xgetUi8Array(int i) {
        XmlUnsignedLong xmlUnsignedLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedLong = (XmlUnsignedLong) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (xmlUnsignedLong == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlUnsignedLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setVariantArray(int i, CTVariant cTVariant) {
        generatedSetterHelperImpl(cTVariant, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setBoolArray(int i, boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (simpleValue != null) {
                simpleValue.setBooleanValue(z);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setBstrArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setClsidArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setCyArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setDateArray(int i, Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (simpleValue != null) {
                simpleValue.setCalendarValue(calendar);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setErrorArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setFiletimeArray(int i, Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (simpleValue != null) {
                simpleValue.setCalendarValue(calendar);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI1Array(int i, byte b) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                simpleValue.setByteValue(b);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI2Array(int i, short s) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (simpleValue != null) {
                simpleValue.setShortValue(s);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI4Array(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (simpleValue != null) {
                simpleValue.setIntValue(i2);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setI8Array(int i, long j) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (simpleValue != null) {
                simpleValue.setLongValue(j);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setLpstrArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setLpwstrArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setR4Array(int i, float f) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (simpleValue != null) {
                simpleValue.setFloatValue(f);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setR8Array(int i, double d) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (simpleValue != null) {
                simpleValue.setDoubleValue(d);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi1Array(int i, short s) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (simpleValue != null) {
                simpleValue.setShortValue(s);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi2Array(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (simpleValue != null) {
                simpleValue.setIntValue(i2);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi4Array(int i, long j) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (simpleValue != null) {
                simpleValue.setLongValue(j);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void setUi8Array(int i, BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (simpleValue != null) {
                simpleValue.setBigIntegerValue(bigInteger);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetBoolArray(int i, XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            XmlBoolean xmlBoolean2 = (XmlBoolean) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (xmlBoolean2 != null) {
                xmlBoolean2.set(xmlBoolean);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetBstrArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetClsidArray(int i, STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            STGuid sTGuid2 = (STGuid) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (sTGuid2 != null) {
                sTGuid2.set(sTGuid);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetCyArray(int i, STCy sTCy) {
        synchronized (monitor()) {
            check_orphaned();
            STCy sTCy2 = (STCy) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (sTCy2 != null) {
                sTCy2.set(sTCy);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetDateArray(int i, XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            XmlDateTime xmlDateTime2 = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (xmlDateTime2 != null) {
                xmlDateTime2.set(xmlDateTime);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetErrorArray(int i, STError sTError) {
        synchronized (monitor()) {
            check_orphaned();
            STError sTError2 = (STError) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (sTError2 != null) {
                sTError2.set(sTError);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetFiletimeArray(int i, XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            XmlDateTime xmlDateTime2 = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (xmlDateTime2 != null) {
                xmlDateTime2.set(xmlDateTime);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI1Array(int i, XmlByte xmlByte) {
        synchronized (monitor()) {
            check_orphaned();
            XmlByte xmlByte2 = (XmlByte) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (xmlByte2 != null) {
                xmlByte2.set(xmlByte);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI2Array(int i, XmlShort xmlShort) {
        synchronized (monitor()) {
            check_orphaned();
            XmlShort xmlShort2 = (XmlShort) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (xmlShort2 != null) {
                xmlShort2.set(xmlShort);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI4Array(int i, XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            XmlInt xmlInt2 = (XmlInt) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (xmlInt2 != null) {
                xmlInt2.set(xmlInt);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetI8Array(int i, XmlLong xmlLong) {
        synchronized (monitor()) {
            check_orphaned();
            XmlLong xmlLong2 = (XmlLong) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (xmlLong2 != null) {
                xmlLong2.set(xmlLong);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetLpstrArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetLpwstrArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetR4Array(int i, XmlFloat xmlFloat) {
        synchronized (monitor()) {
            check_orphaned();
            XmlFloat xmlFloat2 = (XmlFloat) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (xmlFloat2 != null) {
                xmlFloat2.set(xmlFloat);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetR8Array(int i, XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            XmlDouble xmlDouble2 = (XmlDouble) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (xmlDouble2 != null) {
                xmlDouble2.set(xmlDouble);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi1Array(int i, XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (xmlUnsignedByte2 != null) {
                xmlUnsignedByte2.set(xmlUnsignedByte);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi2Array(int i, XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (xmlUnsignedShort2 != null) {
                xmlUnsignedShort2.set(xmlUnsignedShort);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi4Array(int i, XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (xmlUnsignedInt2 != null) {
                xmlUnsignedInt2.set(xmlUnsignedInt);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector
    public void xsetUi8Array(int i, XmlUnsignedLong xmlUnsignedLong) {
        synchronized (monitor()) {
            check_orphaned();
            XmlUnsignedLong xmlUnsignedLong2 = (XmlUnsignedLong) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (xmlUnsignedLong2 != null) {
                xmlUnsignedLong2.set(xmlUnsignedLong);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
