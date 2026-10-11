package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import com.sunia.HTREnginev2.ab0;
import com.sunia.HTREnginev2.af0;
import com.sunia.HTREnginev2.be0;
import com.sunia.HTREnginev2.bf0;
import com.sunia.HTREnginev2.ce0;
import com.sunia.HTREnginev2.fd0;
import com.sunia.HTREnginev2.gd0;
import com.sunia.HTREnginev2.he0;
import com.sunia.HTREnginev2.ib0;
import com.sunia.HTREnginev2.ie0;
import com.sunia.HTREnginev2.je0;
import com.sunia.HTREnginev2.kd0;
import com.sunia.HTREnginev2.kf0;
import com.sunia.HTREnginev2.ld0;
import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.lf0;
import com.sunia.HTREnginev2.mc0;
import com.sunia.HTREnginev2.nc0;
import com.sunia.HTREnginev2.ne0;
import com.sunia.HTREnginev2.oe0;
import com.sunia.HTREnginev2.qd0;
import com.sunia.HTREnginev2.qf0;
import com.sunia.HTREnginev2.rd0;
import com.sunia.HTREnginev2.rf0;
import com.sunia.HTREnginev2.sc0;
import com.sunia.HTREnginev2.tc0;
import com.sunia.HTREnginev2.te0;
import com.sunia.HTREnginev2.vd0;
import com.sunia.HTREnginev2.ve0;
import com.sunia.HTREnginev2.wd0;
import com.sunia.HTREnginev2.we0;
import com.sunia.HTREnginev2.xa0;
import com.sunia.HTREnginev2.xc0;
import com.sunia.HTREnginev2.yc0;
import java.math.BigDecimal;
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
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVariant;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STArrayBaseType;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STCy;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STError;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl.CTArrayImpl;

/* loaded from: classes14.dex */
public class CTArrayImpl extends XmlComplexContentImpl implements CTArray {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "variant"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i1"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i2"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "int"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui1"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui2"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "uint"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "r4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "r8"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "decimal"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "bstr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "date"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "bool"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "error"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "cy"), new QName("", "lBounds"), new QName("", "uBounds"), new QName("", "baseType")};
    private static final long serialVersionUID = 1;

    public CTArrayImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getBstrArray$12(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getCyArray$19(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Calendar[] lambda$getDateArray$14(int i) {
        return new Calendar[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BigDecimal[] lambda$getDecimalArray$10(int i) {
        return new BigDecimal[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getErrorArray$17(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlBoolean[] lambda$xgetBoolArray$16(int i) {
        return new XmlBoolean[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetBstrArray$13(int i) {
        return new XmlString[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STCy[] lambda$xgetCyArray$20(int i) {
        return new STCy[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlDateTime[] lambda$xgetDateArray$15(int i) {
        return new XmlDateTime[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlDecimal[] lambda$xgetDecimalArray$11(int i) {
        return new XmlDecimal[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STError[] lambda$xgetErrorArray$18(int i) {
        return new STError[i];
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
    public static /* synthetic */ XmlInt[] lambda$xgetIntArray$3(int i) {
        return new XmlInt[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlFloat[] lambda$xgetR4Array$8(int i) {
        return new XmlFloat[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlDouble[] lambda$xgetR8Array$9(int i) {
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
    public static /* synthetic */ XmlUnsignedInt[] lambda$xgetUintArray$7(int i) {
        return new XmlUnsignedInt[i];
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addBool(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[14])).setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addBstr(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[12])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addCy(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[16])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addDate(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[13])).setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addDecimal(BigDecimal bigDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[11])).setBigDecimalValue(bigDecimal);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addError(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[15])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addI1(byte b) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[1])).setByteValue(b);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addI2(short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[2])).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addI4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[3])).setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addInt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[4])).setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlBoolean addNewBool() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlString addNewBstr() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STCy addNewCy() {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDateTime addNewDate() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDecimal addNewDecimal() {
        XmlDecimal xmlDecimal;
        synchronized (monitor()) {
            check_orphaned();
            xmlDecimal = (XmlDecimal) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return xmlDecimal;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STError addNewError() {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlByte addNewI1() {
        XmlByte xmlByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlByte = (XmlByte) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return xmlByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlShort addNewI2() {
        XmlShort xmlShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlShort = (XmlShort) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return xmlShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt addNewI4() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt addNewInt() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlFloat addNewR4() {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDouble addNewR8() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            xmlDouble = (XmlDouble) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedByte addNewUi1() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return xmlUnsignedByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedShort addNewUi2() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedInt addNewUi4() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedInt addNewUint() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public CTVariant addNewVariant() {
        CTVariant cTVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTVariant = (CTVariant) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVariant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addR4(float f) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[9])).setFloatValue(f);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addR8(double d) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[10])).setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addUi1(short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[5])).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addUi2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[6])).setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addUi4(long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[7])).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void addUint(long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[8])).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STArrayBaseType.Enum getBaseType() {
        STArrayBaseType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[19]);
            r3 = simpleValue == null ? null : (STArrayBaseType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public boolean[] getBoolArray() {
        return getBooleanArray(PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Boolean> getBoolList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ee0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Boolean.valueOf(CTArrayImpl.this.getBoolArray(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fe0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setBoolArray(((Integer) obj).intValue(), ((Boolean) obj2).booleanValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ge0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertBool(((Integer) obj).intValue(), ((Boolean) obj2).booleanValue());
                }
            }, new he0(this), new je0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public String[] getBstrArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[12], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.sf0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getBstrArray$12;
                lambda$getBstrArray$12 = CTArrayImpl.lambda$getBstrArray$12(i);
                return lambda$getBstrArray$12;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<String> getBstrList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ub0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.getBstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setBstrArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertBstr(((Integer) obj).intValue(), (String) obj2);
                }
            }, new mc0(this), new nc0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public String[] getCyArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[16], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.ba0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getCyArray$19;
                lambda$getCyArray$19 = CTArrayImpl.lambda$getCyArray$19(i);
                return lambda$getCyArray$19;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<String> getCyList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.qa0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.getCyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ra0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setCyArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sa0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertCy(((Integer) obj).intValue(), (String) obj2);
                }
            }, new sc0(this), new tc0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public Calendar[] getDateArray() {
        return (Calendar[]) getObjectArray(PROPERTY_QNAME[13], new ab0(), new IntFunction() { // from class: com.sunia.HTREnginev2.bb0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                Calendar[] lambda$getDateArray$14;
                lambda$getDateArray$14 = CTArrayImpl.lambda$getDateArray$14(i);
                return lambda$getDateArray$14;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Calendar> getDateList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ic0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.getDateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jc0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setDateArray(((Integer) obj).intValue(), (Calendar) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kc0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertDate(((Integer) obj).intValue(), (Calendar) obj2);
                }
            }, new kd0(this), new ld0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public BigDecimal[] getDecimalArray() {
        return (BigDecimal[]) getObjectArray(PROPERTY_QNAME[11], new Function() { // from class: com.sunia.HTREnginev2.fc0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SimpleValue) obj).getBigDecimalValue();
            }
        }, new IntFunction() { // from class: com.sunia.HTREnginev2.gc0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                BigDecimal[] lambda$getDecimalArray$10;
                lambda$getDecimalArray$10 = CTArrayImpl.lambda$getDecimalArray$10(i);
                return lambda$getDecimalArray$10;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<BigDecimal> getDecimalList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ka0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.getDecimalArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.la0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setDecimalArray(((Integer) obj).intValue(), (BigDecimal) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.na0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertDecimal(((Integer) obj).intValue(), (BigDecimal) obj2);
                }
            }, new vd0(this), new wd0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public String[] getErrorArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[15], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.ad0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getErrorArray$17;
                lambda$getErrorArray$17 = CTArrayImpl.lambda$getErrorArray$17(i);
                return lambda$getErrorArray$17;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<String> getErrorList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.hf0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.getErrorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.if0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setErrorArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jf0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertError(((Integer) obj).intValue(), (String) obj2);
                }
            }, new kf0(this), new lf0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public byte[] getI1Array() {
        return getByteArray(PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Byte> getI1List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.mf0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Byte.valueOf(CTArrayImpl.this.getI1Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nf0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setI1Array(((Integer) obj).intValue(), ((Byte) obj2).byteValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.of0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertI1(((Integer) obj).intValue(), ((Byte) obj2).byteValue());
                }
            }, new qf0(this), new rf0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public short[] getI2Array() {
        return getShortArray(PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Short> getI2List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ke0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Short.valueOf(CTArrayImpl.this.getI2Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.le0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setI2Array(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.me0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertI2(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new ne0(this), new oe0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int[] getI4Array() {
        return getIntArray(PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Integer> getI4List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.re0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(CTArrayImpl.this.getI4Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.se0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setI4Array(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ue0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertI4(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new ve0(this), new we0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int[] getIntArray() {
        return getIntArray(PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Integer> getIntList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ta0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(CTArrayImpl.this.getIntArray(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ua0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setIntArray(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.va0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertInt(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new xa0(this), new ib0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int getLBounds() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[17]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public float[] getR4Array() {
        return getFloatArray(PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Float> getR4List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.uc0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Float.valueOf(CTArrayImpl.this.getR4Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vc0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setR4Array(((Integer) obj).intValue(), ((Float) obj2).floatValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wc0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertR4(((Integer) obj).intValue(), ((Float) obj2).floatValue());
                }
            }, new xc0(this), new yc0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public double[] getR8Array() {
        return getDoubleArray(PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Double> getR8List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.yf0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Double.valueOf(CTArrayImpl.this.getR8Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zf0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setR8Array(((Integer) obj).intValue(), ((Double) obj2).doubleValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ca0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertR8(((Integer) obj).intValue(), ((Double) obj2).doubleValue());
                }
            }, new qd0(this), new rd0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int getUBounds() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[18]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public short[] getUi1Array() {
        return getShortArray(PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Short> getUi1List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.hb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Short.valueOf(CTArrayImpl.this.getUi1Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setUi1Array(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertUi1(((Integer) obj).intValue(), ((Short) obj2).shortValue());
                }
            }, new ie0(this), new te0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int[] getUi2Array() {
        return getIntArray(PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Integer> getUi2List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.cf0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(CTArrayImpl.this.getUi2Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.df0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setUi2Array(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ff0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertUi2(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }, new be0(this), new ce0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public long[] getUi4Array() {
        return getLongArray(PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Long> getUi4List() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.cb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(CTArrayImpl.this.getUi4Array(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.db0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setUi4Array(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertUi4(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new af0(this), new bf0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public long[] getUintArray() {
        return getLongArray(PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<Long> getUintList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.wa0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(CTArrayImpl.this.getUintArray(((Integer) obj).intValue()));
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ya0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setUintArray(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.za0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.insertUint(((Integer) obj).intValue(), ((Long) obj2).longValue());
                }
            }, new fd0(this), new gd0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public CTVariant[] getVariantArray() {
        return (CTVariant[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTVariant[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<CTVariant> getVariantList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tf0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.getVariantArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uf0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.setVariantArray(((Integer) obj).intValue(), (CTVariant) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vf0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewVariant(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wf0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTArrayImpl.this.removeVariant(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xf0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTArrayImpl.this.sizeOfVariantArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertBool(int i, boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[14], i)).setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertBstr(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[12], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertCy(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[16], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertDate(int i, Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[13], i)).setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertDecimal(int i, BigDecimal bigDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[11], i)).setBigDecimalValue(bigDecimal);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertError(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[15], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertI1(int i, byte b) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[1], i)).setByteValue(b);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertI2(int i, short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[2], i)).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertI4(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[3], i)).setIntValue(i2);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertInt(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[4], i)).setIntValue(i2);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlBoolean insertNewBool(int i) {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlString insertNewBstr(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STCy insertNewCy(int i) {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDateTime insertNewDate(int i) {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDecimal insertNewDecimal(int i) {
        XmlDecimal xmlDecimal;
        synchronized (monitor()) {
            check_orphaned();
            xmlDecimal = (XmlDecimal) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return xmlDecimal;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STError insertNewError(int i) {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlByte insertNewI1(int i) {
        XmlByte xmlByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlByte = (XmlByte) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return xmlByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlShort insertNewI2(int i) {
        XmlShort xmlShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlShort = (XmlShort) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return xmlShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt insertNewI4(int i) {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt insertNewInt(int i) {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlFloat insertNewR4(int i) {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDouble insertNewR8(int i) {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            xmlDouble = (XmlDouble) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedByte insertNewUi1(int i) {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return xmlUnsignedByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedShort insertNewUi2(int i) {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedInt insertNewUi4(int i) {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedInt insertNewUint(int i) {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public CTVariant insertNewVariant(int i) {
        CTVariant cTVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTVariant = (CTVariant) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTVariant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertR4(int i, float f) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[9], i)).setFloatValue(f);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertR8(int i, double d) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[10], i)).setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertUi1(int i, short s) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[5], i)).setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertUi2(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[6], i)).setIntValue(i2);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertUi4(int i, long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[7], i)).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void insertUint(int i, long j) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[8], i)).setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeBool(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeBstr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeCy(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeDate(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeDecimal(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeError(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeI1(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeI2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeI4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeInt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeR4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeR8(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeUi1(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeUi2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeUi4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeUint(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void removeVariant(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setBaseType(STArrayBaseType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[19]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[19]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setBoolArray(boolean[] zArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(zArr, PROPERTY_QNAME[14]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setBstrArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setCyArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[16]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setDateArray(Calendar[] calendarArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(calendarArr, PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setDecimalArray(BigDecimal[] bigDecimalArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bigDecimalArr, PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setErrorArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[15]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setI1Array(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setI2Array(short[] sArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setI4Array(int[] iArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(iArr, PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setIntArray(int[] iArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(iArr, PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setLBounds(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[17]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[17]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setR4Array(float[] fArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(fArr, PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setR8Array(double[] dArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(dArr, PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setUBounds(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[18]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[18]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setUi1Array(short[] sArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sArr, PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setUi2Array(int[] iArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(iArr, PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setUi4Array(long[] jArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(jArr, PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setUintArray(long[] jArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(jArr, PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setVariantArray(CTVariant[] cTVariantArr) {
        check_orphaned();
        arraySetterHelper(cTVariantArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfBoolArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfBstrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfCyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfDateArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfDecimalArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfErrorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfI1Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfI2Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfI4Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfIntArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfR4Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfR8Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfUi1Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfUi2Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfUi4Array() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfUintArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int sizeOfVariantArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STArrayBaseType xgetBaseType() {
        STArrayBaseType sTArrayBaseType;
        synchronized (monitor()) {
            check_orphaned();
            sTArrayBaseType = (STArrayBaseType) get_store().find_attribute_user(PROPERTY_QNAME[19]);
        }
        return sTArrayBaseType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlBoolean[] xgetBoolArray() {
        return (XmlBoolean[]) xgetArray(PROPERTY_QNAME[14], new IntFunction() { // from class: com.sunia.HTREnginev2.fb0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlBoolean[] lambda$xgetBoolArray$16;
                lambda$xgetBoolArray$16 = CTArrayImpl.lambda$xgetBoolArray$16(i);
                return lambda$xgetBoolArray$16;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlBoolean> xgetBoolList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ob0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetBoolArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetBoolArray(((Integer) obj).intValue(), (XmlBoolean) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewBool(((Integer) obj).intValue());
                }
            }, new he0(this), new je0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlString[] xgetBstrArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[12], new IntFunction() { // from class: com.sunia.HTREnginev2.pa0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetBstrArray$13;
                lambda$xgetBstrArray$13 = CTArrayImpl.lambda$xgetBstrArray$13(i);
                return lambda$xgetBstrArray$13;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlString> xgetBstrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetBstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ec0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetBstrArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lc0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewBstr(((Integer) obj).intValue());
                }
            }, new mc0(this), new nc0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STCy[] xgetCyArray() {
        return (STCy[]) xgetArray(PROPERTY_QNAME[16], new IntFunction() { // from class: com.sunia.HTREnginev2.gf0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STCy[] lambda$xgetCyArray$20;
                lambda$xgetCyArray$20 = CTArrayImpl.lambda$xgetCyArray$20(i);
                return lambda$xgetCyArray$20;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<STCy> xgetCyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oc0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetCyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pc0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetCyArray(((Integer) obj).intValue(), (STCy) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rc0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewCy(((Integer) obj).intValue());
                }
            }, new sc0(this), new tc0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDateTime[] xgetDateArray() {
        return (XmlDateTime[]) xgetArray(PROPERTY_QNAME[13], new IntFunction() { // from class: com.sunia.HTREnginev2.de0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlDateTime[] lambda$xgetDateArray$15;
                lambda$xgetDateArray$15 = CTArrayImpl.lambda$xgetDateArray$15(i);
                return lambda$xgetDateArray$15;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlDateTime> xgetDateList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetDateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.id0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetDateArray(((Integer) obj).intValue(), (XmlDateTime) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewDate(((Integer) obj).intValue());
                }
            }, new kd0(this), new ld0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDecimal[] xgetDecimalArray() {
        return (XmlDecimal[]) xgetArray(PROPERTY_QNAME[11], new IntFunction() { // from class: com.sunia.HTREnginev2.sb0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlDecimal[] lambda$xgetDecimalArray$11;
                lambda$xgetDecimalArray$11 = CTArrayImpl.lambda$xgetDecimalArray$11(i);
                return lambda$xgetDecimalArray$11;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlDecimal> xgetDecimalList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetDecimalArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.td0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetDecimalArray(((Integer) obj).intValue(), (XmlDecimal) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ud0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewDecimal(((Integer) obj).intValue());
                }
            }, new vd0(this), new wd0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STError[] xgetErrorArray() {
        return (STError[]) xgetArray(PROPERTY_QNAME[15], new IntFunction() { // from class: com.sunia.HTREnginev2.dc0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STError[] lambda$xgetErrorArray$18;
                lambda$xgetErrorArray$18 = CTArrayImpl.lambda$xgetErrorArray$18(i);
                return lambda$xgetErrorArray$18;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<STError> xgetErrorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetErrorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetErrorArray(((Integer) obj).intValue(), (STError) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewError(((Integer) obj).intValue());
                }
            }, new kf0(this), new lf0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlByte[] xgetI1Array() {
        return (XmlByte[]) xgetArray(PROPERTY_QNAME[1], new IntFunction() { // from class: com.sunia.HTREnginev2.rb0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlByte[] lambda$xgetI1Array$0;
                lambda$xgetI1Array$0 = CTArrayImpl.lambda$xgetI1Array$0(i);
                return lambda$xgetI1Array$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlByte> xgetI1List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ga0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetI1Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ha0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetI1Array(((Integer) obj).intValue(), (XmlByte) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ia0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewI1(((Integer) obj).intValue());
                }
            }, new qf0(this), new rf0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlShort[] xgetI2Array() {
        return (XmlShort[]) xgetArray(PROPERTY_QNAME[2], new IntFunction() { // from class: com.sunia.HTREnginev2.zc0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlShort[] lambda$xgetI2Array$1;
                lambda$xgetI2Array$1 = CTArrayImpl.lambda$xgetI2Array$1(i);
                return lambda$xgetI2Array$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlShort> xgetI2List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.da0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetI2Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ea0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetI2Array(((Integer) obj).intValue(), (XmlShort) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fa0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewI2(((Integer) obj).intValue());
                }
            }, new ne0(this), new oe0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt[] xgetI4Array() {
        return (XmlInt[]) xgetArray(PROPERTY_QNAME[3], new IntFunction() { // from class: com.sunia.HTREnginev2.hc0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlInt[] lambda$xgetI4Array$2;
                lambda$xgetI4Array$2 = CTArrayImpl.lambda$xgetI4Array$2(i);
                return lambda$xgetI4Array$2;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlInt> xgetI4List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetI4Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yb0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetI4Array(((Integer) obj).intValue(), (XmlInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zb0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewI4(((Integer) obj).intValue());
                }
            }, new ve0(this), new we0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt[] xgetIntArray() {
        return (XmlInt[]) xgetArray(PROPERTY_QNAME[4], new IntFunction() { // from class: com.sunia.HTREnginev2.qc0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlInt[] lambda$xgetIntArray$3;
                lambda$xgetIntArray$3 = CTArrayImpl.lambda$xgetIntArray$3(i);
                return lambda$xgetIntArray$3;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlInt> xgetIntList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pf0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetIntArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ag0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetIntArray(((Integer) obj).intValue(), (XmlInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ma0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewInt(((Integer) obj).intValue());
                }
            }, new xa0(this), new ib0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt xgetLBounds() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[17]);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlFloat[] xgetR4Array() {
        return (XmlFloat[]) xgetArray(PROPERTY_QNAME[9], new IntFunction() { // from class: com.sunia.HTREnginev2.gb0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlFloat[] lambda$xgetR4Array$8;
                lambda$xgetR4Array$8 = CTArrayImpl.lambda$xgetR4Array$8(i);
                return lambda$xgetR4Array$8;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlFloat> xgetR4List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ac0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetR4Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bc0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetR4Array(((Integer) obj).intValue(), (XmlFloat) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cc0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewR4(((Integer) obj).intValue());
                }
            }, new xc0(this), new yc0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDouble[] xgetR8Array() {
        return (XmlDouble[]) xgetArray(PROPERTY_QNAME[10], new IntFunction() { // from class: com.sunia.HTREnginev2.pe0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlDouble[] lambda$xgetR8Array$9;
                lambda$xgetR8Array$9 = CTArrayImpl.lambda$xgetR8Array$9(i);
                return lambda$xgetR8Array$9;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlDouble> xgetR8List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetR8Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.od0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetR8Array(((Integer) obj).intValue(), (XmlDouble) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewR8(((Integer) obj).intValue());
                }
            }, new qd0(this), new rd0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt xgetUBounds() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[18]);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedByte[] xgetUi1Array() {
        return (XmlUnsignedByte[]) xgetArray(PROPERTY_QNAME[5], new IntFunction() { // from class: com.sunia.HTREnginev2.qe0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedByte[] lambda$xgetUi1Array$4;
                lambda$xgetUi1Array$4 = CTArrayImpl.lambda$xgetUi1Array$4(i);
                return lambda$xgetUi1Array$4;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlUnsignedByte> xgetUi1List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetUi1Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.md0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetUi1Array(((Integer) obj).intValue(), (XmlUnsignedByte) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewUi1(((Integer) obj).intValue());
                }
            }, new ie0(this), new te0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedShort[] xgetUi2Array() {
        return (XmlUnsignedShort[]) xgetArray(PROPERTY_QNAME[6], new IntFunction() { // from class: com.sunia.HTREnginev2.ef0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedShort[] lambda$xgetUi2Array$5;
                lambda$xgetUi2Array$5 = CTArrayImpl.lambda$xgetUi2Array$5(i);
                return lambda$xgetUi2Array$5;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlUnsignedShort> xgetUi2List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetUi2Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zd0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetUi2Array(((Integer) obj).intValue(), (XmlUnsignedShort) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ae0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewUi2(((Integer) obj).intValue());
                }
            }, new be0(this), new ce0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedInt[] xgetUi4Array() {
        return (XmlUnsignedInt[]) xgetArray(PROPERTY_QNAME[7], new IntFunction() { // from class: com.sunia.HTREnginev2.ja0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedInt[] lambda$xgetUi4Array$6;
                lambda$xgetUi4Array$6 = CTArrayImpl.lambda$xgetUi4Array$6(i);
                return lambda$xgetUi4Array$6;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlUnsignedInt> xgetUi4List() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xe0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetUi4Array(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ye0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetUi4Array(((Integer) obj).intValue(), (XmlUnsignedInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ze0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewUi4(((Integer) obj).intValue());
                }
            }, new af0(this), new bf0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedInt[] xgetUintArray() {
        return (XmlUnsignedInt[]) xgetArray(PROPERTY_QNAME[8], new IntFunction() { // from class: com.sunia.HTREnginev2.oa0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlUnsignedInt[] lambda$xgetUintArray$7;
                lambda$xgetUintArray$7 = CTArrayImpl.lambda$xgetUintArray$7(i);
                return lambda$xgetUintArray$7;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public List<XmlUnsignedInt> xgetUintList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cd0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.xgetUintArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dd0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTArrayImpl.this.xsetUintArray(((Integer) obj).intValue(), (XmlUnsignedInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ed0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTArrayImpl.this.insertNewUint(((Integer) obj).intValue());
                }
            }, new fd0(this), new gd0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetBaseType(STArrayBaseType sTArrayBaseType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STArrayBaseType sTArrayBaseType2 = (STArrayBaseType) typeStore.find_attribute_user(qNameArr[19]);
            if (sTArrayBaseType2 == null) {
                sTArrayBaseType2 = (STArrayBaseType) get_store().add_attribute_user(qNameArr[19]);
            }
            sTArrayBaseType2.set(sTArrayBaseType);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetBoolArray(XmlBoolean[] xmlBooleanArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlBooleanArr, PROPERTY_QNAME[14]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetBstrArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetCyArray(STCy[] sTCyArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTCyArr, PROPERTY_QNAME[16]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetDateArray(XmlDateTime[] xmlDateTimeArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlDateTimeArr, PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetDecimalArray(XmlDecimal[] xmlDecimalArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlDecimalArr, PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetErrorArray(STError[] sTErrorArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTErrorArr, PROPERTY_QNAME[15]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetI1Array(XmlByte[] xmlByteArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlByteArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetI2Array(XmlShort[] xmlShortArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlShortArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetI4Array(XmlInt[] xmlIntArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlIntArr, PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetIntArray(XmlInt[] xmlIntArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlIntArr, PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetLBounds(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[17]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[17]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetR4Array(XmlFloat[] xmlFloatArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlFloatArr, PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetR8Array(XmlDouble[] xmlDoubleArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlDoubleArr, PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetUBounds(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[18]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[18]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetUi1Array(XmlUnsignedByte[] xmlUnsignedByteArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedByteArr, PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetUi2Array(XmlUnsignedShort[] xmlUnsignedShortArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedShortArr, PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetUi4Array(XmlUnsignedInt[] xmlUnsignedIntArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedIntArr, PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetUintArray(XmlUnsignedInt[] xmlUnsignedIntArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlUnsignedIntArr, PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public boolean getBoolArray(int i) {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (simpleValue != null) {
                booleanValue = simpleValue.getBooleanValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public String getBstrArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public String getCyArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public Calendar getDateArray(int i) {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (simpleValue != null) {
                calendarValue = simpleValue.getCalendarValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return calendarValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public BigDecimal getDecimalArray(int i) {
        BigDecimal bigDecimalValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (simpleValue != null) {
                bigDecimalValue = simpleValue.getBigDecimalValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return bigDecimalValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public String getErrorArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public int getIntArray(int i) {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (simpleValue != null) {
                intValue = simpleValue.getIntValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public long getUintArray(int i) {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (simpleValue != null) {
                longValue = simpleValue.getLongValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlBoolean xgetBoolArray(int i) {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (xmlBoolean == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlString xgetBstrArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STCy xgetCyArray(int i) {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (sTCy == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDateTime xgetDateArray(int i) {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (xmlDateTime == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlDecimal xgetDecimalArray(int i) {
        XmlDecimal xmlDecimal;
        synchronized (monitor()) {
            check_orphaned();
            xmlDecimal = (XmlDecimal) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (xmlDecimal == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlDecimal;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public STError xgetErrorArray(int i) {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (sTError == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlInt xgetIntArray(int i) {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (xmlInt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public XmlUnsignedInt xgetUintArray(int i) {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (xmlUnsignedInt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setVariantArray(int i, CTVariant cTVariant) {
        generatedSetterHelperImpl(cTVariant, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setBoolArray(int i, boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (simpleValue != null) {
                simpleValue.setBooleanValue(z);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setBstrArray(int i, String str) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setCyArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setDateArray(int i, Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (simpleValue != null) {
                simpleValue.setCalendarValue(calendar);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setDecimalArray(int i, BigDecimal bigDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (simpleValue != null) {
                simpleValue.setBigDecimalValue(bigDecimal);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setErrorArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setIntArray(int i, int i2) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (simpleValue != null) {
                simpleValue.setIntValue(i2);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void setUintArray(int i, long j) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (simpleValue != null) {
                simpleValue.setLongValue(j);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetBoolArray(int i, XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            XmlBoolean xmlBoolean2 = (XmlBoolean) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (xmlBoolean2 != null) {
                xmlBoolean2.set(xmlBoolean);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetBstrArray(int i, XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetCyArray(int i, STCy sTCy) {
        synchronized (monitor()) {
            check_orphaned();
            STCy sTCy2 = (STCy) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (sTCy2 != null) {
                sTCy2.set(sTCy);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetDateArray(int i, XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            XmlDateTime xmlDateTime2 = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (xmlDateTime2 != null) {
                xmlDateTime2.set(xmlDateTime);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetDecimalArray(int i, XmlDecimal xmlDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            XmlDecimal xmlDecimal2 = (XmlDecimal) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (xmlDecimal2 != null) {
                xmlDecimal2.set(xmlDecimal);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetErrorArray(int i, STError sTError) {
        synchronized (monitor()) {
            check_orphaned();
            STError sTError2 = (STError) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (sTError2 != null) {
                sTError2.set(sTError);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetIntArray(int i, XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            XmlInt xmlInt2 = (XmlInt) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (xmlInt2 != null) {
                xmlInt2.set(xmlInt);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray
    public void xsetUintArray(int i, XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (xmlUnsignedInt2 != null) {
                xmlUnsignedInt2.set(xmlUnsignedInt);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
