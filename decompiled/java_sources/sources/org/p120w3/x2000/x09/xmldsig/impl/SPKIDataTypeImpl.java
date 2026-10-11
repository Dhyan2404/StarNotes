package org.p120w3.x2000.x09.xmldsig.impl;

import com.sunia.HTREnginev2.pyl;
import com.sunia.HTREnginev2.qyl;
import com.sunia.HTREnginev2.syl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SPKIDataType;
import org.p120w3.x2000.x09.xmldsig.impl.SPKIDataTypeImpl;

/* loaded from: classes16.dex */
public class SPKIDataTypeImpl extends XmlComplexContentImpl implements SPKIDataType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SPKISexp")};
    private static final long serialVersionUID = 1;

    public SPKIDataTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[][] lambda$getSPKISexpArray$0(int i) {
        return new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlBase64Binary[] lambda$xgetSPKISexpArray$1(int i) {
        return new XmlBase64Binary[i];
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public XmlBase64Binary addNewSPKISexp() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public void addSPKISexp(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public byte[][] getSPKISexpArray() {
        return (byte[][]) getObjectArray(PROPERTY_QNAME[0], new syl(), new IntFunction() { // from class: com.sunia.HTREnginev2.tyl
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                byte[][] lambda$getSPKISexpArray$0;
                lambda$getSPKISexpArray$0 = SPKIDataTypeImpl.lambda$getSPKISexpArray$0(i);
                return lambda$getSPKISexpArray$0;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public List<byte[]> getSPKISexpList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.lyl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SPKIDataTypeImpl.this.getSPKISexpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nyl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SPKIDataTypeImpl.this.setSPKISexpArray(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oyl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SPKIDataTypeImpl.this.insertSPKISexp(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new pyl(this), new qyl(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public XmlBase64Binary insertNewSPKISexp(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public void insertSPKISexp(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public void removeSPKISexp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public void setSPKISexpArray(byte[][] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public int sizeOfSPKISexpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public XmlBase64Binary[] xgetSPKISexpArray() {
        return (XmlBase64Binary[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.ryl
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlBase64Binary[] lambda$xgetSPKISexpArray$1;
                lambda$xgetSPKISexpArray$1 = SPKIDataTypeImpl.lambda$xgetSPKISexpArray$1(i);
                return lambda$xgetSPKISexpArray$1;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public List<XmlBase64Binary> xgetSPKISexpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uyl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SPKIDataTypeImpl.this.xgetSPKISexpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vyl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SPKIDataTypeImpl.this.xsetSPKISexpArray(((Integer) obj).intValue(), (XmlBase64Binary) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.myl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SPKIDataTypeImpl.this.insertNewSPKISexp(((Integer) obj).intValue());
                }
            }, new pyl(this), new qyl(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public void xsetSPKISexpArray(XmlBase64Binary[] xmlBase64BinaryArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlBase64BinaryArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public byte[] getSPKISexpArray(int i) {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                byteArrayValue = simpleValue.getByteArrayValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public XmlBase64Binary xgetSPKISexpArray(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlBase64Binary == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public void setSPKISexpArray(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                simpleValue.setByteArrayValue(bArr);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataType
    public void xsetSPKISexpArray(int i, XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlBase64Binary2 != null) {
                xmlBase64Binary2.set(xmlBase64Binary);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
