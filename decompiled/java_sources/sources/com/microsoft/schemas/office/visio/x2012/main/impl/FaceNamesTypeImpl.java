package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.FaceNameType;
import com.microsoft.schemas.office.visio.x2012.main.FaceNamesType;
import com.microsoft.schemas.office.visio.x2012.main.impl.FaceNamesTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class FaceNamesTypeImpl extends XmlComplexContentImpl implements FaceNamesType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "FaceName")};
    private static final long serialVersionUID = 1;

    public FaceNamesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public FaceNameType addNewFaceName() {
        FaceNameType faceNameType;
        synchronized (monitor()) {
            check_orphaned();
            faceNameType = (FaceNameType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return faceNameType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public FaceNameType[] getFaceNameArray() {
        return (FaceNameType[]) getXmlObjectArray(PROPERTY_QNAME[0], new FaceNameType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public List<FaceNameType> getFaceNameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k8g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return FaceNamesTypeImpl.this.getFaceNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l8g
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    FaceNamesTypeImpl.this.setFaceNameArray(((Integer) obj).intValue(), (FaceNameType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m8g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return FaceNamesTypeImpl.this.insertNewFaceName(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n8g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    FaceNamesTypeImpl.this.removeFaceName(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o8g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(FaceNamesTypeImpl.this.sizeOfFaceNameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public FaceNameType insertNewFaceName(int i) {
        FaceNameType faceNameType;
        synchronized (monitor()) {
            check_orphaned();
            faceNameType = (FaceNameType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return faceNameType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public void removeFaceName(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public void setFaceNameArray(FaceNameType[] faceNameTypeArr) {
        check_orphaned();
        arraySetterHelper(faceNameTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public int sizeOfFaceNameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public FaceNameType getFaceNameArray(int i) {
        FaceNameType faceNameType;
        synchronized (monitor()) {
            check_orphaned();
            faceNameType = (FaceNameType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (faceNameType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return faceNameType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.FaceNamesType
    public void setFaceNameArray(int i, FaceNameType faceNameType) {
        generatedSetterHelperImpl(faceNameType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
