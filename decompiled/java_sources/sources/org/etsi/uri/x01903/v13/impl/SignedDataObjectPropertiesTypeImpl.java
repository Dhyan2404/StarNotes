package org.etsi.uri.x01903.v13.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CommitmentTypeIndicationType;
import org.etsi.uri.x01903.v13.DataObjectFormatType;
import org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType;
import org.etsi.uri.x01903.v13.XAdESTimeStampType;
import org.etsi.uri.x01903.v13.impl.SignedDataObjectPropertiesTypeImpl;

/* loaded from: classes13.dex */
public class SignedDataObjectPropertiesTypeImpl extends XmlComplexContentImpl implements SignedDataObjectPropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "DataObjectFormat"), new QName(SignatureFacet.XADES_132_NS, "CommitmentTypeIndication"), new QName(SignatureFacet.XADES_132_NS, "AllDataObjectsTimeStamp"), new QName(SignatureFacet.XADES_132_NS, "IndividualDataObjectsTimeStamp"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public SignedDataObjectPropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType addNewAllDataObjectsTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public CommitmentTypeIndicationType addNewCommitmentTypeIndication() {
        CommitmentTypeIndicationType commitmentTypeIndicationType;
        synchronized (monitor()) {
            check_orphaned();
            commitmentTypeIndicationType = (CommitmentTypeIndicationType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return commitmentTypeIndicationType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public DataObjectFormatType addNewDataObjectFormat() {
        DataObjectFormatType dataObjectFormatType;
        synchronized (monitor()) {
            check_orphaned();
            dataObjectFormatType = (DataObjectFormatType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dataObjectFormatType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType addNewIndividualDataObjectsTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType[] getAllDataObjectsTimeStampArray() {
        return (XAdESTimeStampType[]) getXmlObjectArray(PROPERTY_QNAME[2], new XAdESTimeStampType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public List<XAdESTimeStampType> getAllDataObjectsTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.trm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.getAllDataObjectsTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.urm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignedDataObjectPropertiesTypeImpl.this.setAllDataObjectsTimeStampArray(((Integer) obj).intValue(), (XAdESTimeStampType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vrm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.insertNewAllDataObjectsTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wrm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignedDataObjectPropertiesTypeImpl.this.removeAllDataObjectsTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xrm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SignedDataObjectPropertiesTypeImpl.this.sizeOfAllDataObjectsTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public CommitmentTypeIndicationType[] getCommitmentTypeIndicationArray() {
        return (CommitmentTypeIndicationType[]) getXmlObjectArray(PROPERTY_QNAME[1], new CommitmentTypeIndicationType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public List<CommitmentTypeIndicationType> getCommitmentTypeIndicationList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.frm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.getCommitmentTypeIndicationArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.grm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignedDataObjectPropertiesTypeImpl.this.setCommitmentTypeIndicationArray(((Integer) obj).intValue(), (CommitmentTypeIndicationType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hrm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.insertNewCommitmentTypeIndication(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.irm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignedDataObjectPropertiesTypeImpl.this.removeCommitmentTypeIndication(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jrm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SignedDataObjectPropertiesTypeImpl.this.sizeOfCommitmentTypeIndicationArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public DataObjectFormatType[] getDataObjectFormatArray() {
        return (DataObjectFormatType[]) getXmlObjectArray(PROPERTY_QNAME[0], new DataObjectFormatType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public List<DataObjectFormatType> getDataObjectFormatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.krm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.getDataObjectFormatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lrm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignedDataObjectPropertiesTypeImpl.this.setDataObjectFormatArray(((Integer) obj).intValue(), (DataObjectFormatType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mrm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.insertNewDataObjectFormat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nrm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignedDataObjectPropertiesTypeImpl.this.removeDataObjectFormat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.orm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SignedDataObjectPropertiesTypeImpl.this.sizeOfDataObjectFormatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType[] getIndividualDataObjectsTimeStampArray() {
        return (XAdESTimeStampType[]) getXmlObjectArray(PROPERTY_QNAME[3], new XAdESTimeStampType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public List<XAdESTimeStampType> getIndividualDataObjectsTimeStampList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.erm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.getIndividualDataObjectsTimeStampArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.prm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignedDataObjectPropertiesTypeImpl.this.setIndividualDataObjectsTimeStampArray(((Integer) obj).intValue(), (XAdESTimeStampType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qrm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedDataObjectPropertiesTypeImpl.this.insertNewIndividualDataObjectsTimeStamp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rrm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignedDataObjectPropertiesTypeImpl.this.removeIndividualDataObjectsTimeStamp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.srm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SignedDataObjectPropertiesTypeImpl.this.sizeOfIndividualDataObjectsTimeStampArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType insertNewAllDataObjectsTimeStamp(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public CommitmentTypeIndicationType insertNewCommitmentTypeIndication(int i) {
        CommitmentTypeIndicationType commitmentTypeIndicationType;
        synchronized (monitor()) {
            check_orphaned();
            commitmentTypeIndicationType = (CommitmentTypeIndicationType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return commitmentTypeIndicationType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public DataObjectFormatType insertNewDataObjectFormat(int i) {
        DataObjectFormatType dataObjectFormatType;
        synchronized (monitor()) {
            check_orphaned();
            dataObjectFormatType = (DataObjectFormatType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return dataObjectFormatType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType insertNewIndividualDataObjectsTimeStamp(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void removeAllDataObjectsTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void removeCommitmentTypeIndication(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void removeDataObjectFormat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void removeIndividualDataObjectsTimeStamp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setAllDataObjectsTimeStampArray(XAdESTimeStampType[] xAdESTimeStampTypeArr) {
        check_orphaned();
        arraySetterHelper(xAdESTimeStampTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setCommitmentTypeIndicationArray(CommitmentTypeIndicationType[] commitmentTypeIndicationTypeArr) {
        check_orphaned();
        arraySetterHelper(commitmentTypeIndicationTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setDataObjectFormatArray(DataObjectFormatType[] dataObjectFormatTypeArr) {
        check_orphaned();
        arraySetterHelper(dataObjectFormatTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setId(String str) {
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

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setIndividualDataObjectsTimeStampArray(XAdESTimeStampType[] xAdESTimeStampTypeArr) {
        check_orphaned();
        arraySetterHelper(xAdESTimeStampTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public int sizeOfAllDataObjectsTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public int sizeOfCommitmentTypeIndicationArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public int sizeOfDataObjectFormatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public int sizeOfIndividualDataObjectsTimeStampArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType getAllDataObjectsTimeStampArray(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (xAdESTimeStampType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public CommitmentTypeIndicationType getCommitmentTypeIndicationArray(int i) {
        CommitmentTypeIndicationType commitmentTypeIndicationType;
        synchronized (monitor()) {
            check_orphaned();
            commitmentTypeIndicationType = (CommitmentTypeIndicationType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (commitmentTypeIndicationType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return commitmentTypeIndicationType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public DataObjectFormatType getDataObjectFormatArray(int i) {
        DataObjectFormatType dataObjectFormatType;
        synchronized (monitor()) {
            check_orphaned();
            dataObjectFormatType = (DataObjectFormatType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (dataObjectFormatType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return dataObjectFormatType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public XAdESTimeStampType getIndividualDataObjectsTimeStampArray(int i) {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (xAdESTimeStampType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setAllDataObjectsTimeStampArray(int i, XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setCommitmentTypeIndicationArray(int i, CommitmentTypeIndicationType commitmentTypeIndicationType) {
        generatedSetterHelperImpl(commitmentTypeIndicationType, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setDataObjectFormatArray(int i, DataObjectFormatType dataObjectFormatType) {
        generatedSetterHelperImpl(dataObjectFormatType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType
    public void setIndividualDataObjectsTimeStampArray(int i, XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[3], i, (short) 2);
    }
}
