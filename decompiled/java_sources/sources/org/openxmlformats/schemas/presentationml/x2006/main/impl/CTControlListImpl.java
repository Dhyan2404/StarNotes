package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
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
import org.openxmlformats.schemas.presentationml.x2006.main.CTControl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTControlList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTControlListImpl;

/* loaded from: classes14.dex */
public class CTControlListImpl extends XmlComplexContentImpl implements CTControlList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, SessionDescription.f26438n)};
    private static final long serialVersionUID = 1;

    public CTControlListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public CTControl addNewControl() {
        CTControl cTControl;
        synchronized (monitor()) {
            check_orphaned();
            cTControl = (CTControl) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTControl;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public CTControl[] getControlArray() {
        return (CTControl[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTControl[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public List<CTControl> getControlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.db2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTControlListImpl.this.getControlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eb2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTControlListImpl.this.setControlArray(((Integer) obj).intValue(), (CTControl) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fb2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTControlListImpl.this.insertNewControl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gb2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTControlListImpl.this.removeControl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hb2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTControlListImpl.this.sizeOfControlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public CTControl insertNewControl(int i) {
        CTControl cTControl;
        synchronized (monitor()) {
            check_orphaned();
            cTControl = (CTControl) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTControl;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public void removeControl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public void setControlArray(CTControl[] cTControlArr) {
        check_orphaned();
        arraySetterHelper(cTControlArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public int sizeOfControlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public CTControl getControlArray(int i) {
        CTControl cTControl;
        synchronized (monitor()) {
            check_orphaned();
            cTControl = (CTControl) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTControl == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTControl;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTControlList
    public void setControlArray(int i, CTControl cTControl) {
        generatedSetterHelperImpl(cTControl, PROPERTY_QNAME[0], i, (short) 2);
    }
}
