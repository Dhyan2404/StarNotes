package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredError;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTIgnoredErrorsImpl;

/* loaded from: classes15.dex */
public class CTIgnoredErrorsImpl extends XmlComplexContentImpl implements CTIgnoredErrors {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "ignoredError"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTIgnoredErrorsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public CTIgnoredError addNewIgnoredError() {
        CTIgnoredError cTIgnoredError;
        synchronized (monitor()) {
            check_orphaned();
            cTIgnoredError = (CTIgnoredError) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTIgnoredError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public CTIgnoredError[] getIgnoredErrorArray() {
        return (CTIgnoredError[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTIgnoredError[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public List<CTIgnoredError> getIgnoredErrorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a65
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTIgnoredErrorsImpl.this.getIgnoredErrorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b65
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTIgnoredErrorsImpl.this.setIgnoredErrorArray(((Integer) obj).intValue(), (CTIgnoredError) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c65
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTIgnoredErrorsImpl.this.insertNewIgnoredError(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d65
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTIgnoredErrorsImpl.this.removeIgnoredError(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e65
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTIgnoredErrorsImpl.this.sizeOfIgnoredErrorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public CTIgnoredError insertNewIgnoredError(int i) {
        CTIgnoredError cTIgnoredError;
        synchronized (monitor()) {
            check_orphaned();
            cTIgnoredError = (CTIgnoredError) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTIgnoredError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public void removeIgnoredError(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public void setIgnoredErrorArray(CTIgnoredError[] cTIgnoredErrorArr) {
        check_orphaned();
        arraySetterHelper(cTIgnoredErrorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public int sizeOfIgnoredErrorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public CTIgnoredError getIgnoredErrorArray(int i) {
        CTIgnoredError cTIgnoredError;
        synchronized (monitor()) {
            check_orphaned();
            cTIgnoredError = (CTIgnoredError) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTIgnoredError == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTIgnoredError;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIgnoredErrors
    public void setIgnoredErrorArray(int i, CTIgnoredError cTIgnoredError) {
        generatedSetterHelperImpl(cTIgnoredError, PROPERTY_QNAME[0], i, (short) 2);
    }
}
