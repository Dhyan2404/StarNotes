package org.openxmlformats.schemas.xpackage.x2006.relationships.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageNamespaces;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationship;
import org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships;
import org.openxmlformats.schemas.xpackage.x2006.relationships.impl.CTRelationshipsImpl;

/* loaded from: classes16.dex */
public class CTRelationshipsImpl extends XmlComplexContentImpl implements CTRelationships {
    private static final QName[] PROPERTY_QNAME = {new QName(PackageNamespaces.RELATIONSHIPS, PackageRelationship.RELATIONSHIP_TAG_NAME)};
    private static final long serialVersionUID = 1;

    public CTRelationshipsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public CTRelationship addNewRelationship() {
        CTRelationship cTRelationship;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationship = (CTRelationship) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelationship;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public CTRelationship[] getRelationshipArray() {
        return (CTRelationship[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRelationship[0]);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public List<CTRelationship> getRelationshipList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qr8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRelationshipsImpl.this.getRelationshipArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rr8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRelationshipsImpl.this.setRelationshipArray(((Integer) obj).intValue(), (CTRelationship) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sr8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRelationshipsImpl.this.insertNewRelationship(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tr8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRelationshipsImpl.this.removeRelationship(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ur8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRelationshipsImpl.this.sizeOfRelationshipArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public CTRelationship insertNewRelationship(int i) {
        CTRelationship cTRelationship;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationship = (CTRelationship) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRelationship;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public void removeRelationship(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public void setRelationshipArray(CTRelationship[] cTRelationshipArr) {
        check_orphaned();
        arraySetterHelper(cTRelationshipArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public int sizeOfRelationshipArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public CTRelationship getRelationshipArray(int i) {
        CTRelationship cTRelationship;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationship = (CTRelationship) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRelationship == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRelationship;
    }

    @Override // org.openxmlformats.schemas.xpackage.x2006.relationships.CTRelationships
    public void setRelationshipArray(int i, CTRelationship cTRelationship) {
        generatedSetterHelperImpl(cTRelationship, PROPERTY_QNAME[0], i, (short) 2);
    }
}
