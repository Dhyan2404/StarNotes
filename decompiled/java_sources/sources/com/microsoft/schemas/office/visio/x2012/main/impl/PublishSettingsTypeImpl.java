package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType;
import com.microsoft.schemas.office.visio.x2012.main.PublishedPageType;
import com.microsoft.schemas.office.visio.x2012.main.RefreshableDataType;
import com.microsoft.schemas.office.visio.x2012.main.impl.PublishSettingsTypeImpl;
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
public class PublishSettingsTypeImpl extends XmlComplexContentImpl implements PublishSettingsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "PublishedPage"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "RefreshableData")};
    private static final long serialVersionUID = 1;

    public PublishSettingsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public PublishedPageType addNewPublishedPage() {
        PublishedPageType publishedPageType;
        synchronized (monitor()) {
            check_orphaned();
            publishedPageType = (PublishedPageType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return publishedPageType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public RefreshableDataType addNewRefreshableData() {
        RefreshableDataType refreshableDataType;
        synchronized (monitor()) {
            check_orphaned();
            refreshableDataType = (RefreshableDataType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return refreshableDataType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public PublishedPageType[] getPublishedPageArray() {
        return (PublishedPageType[]) getXmlObjectArray(PROPERTY_QNAME[0], new PublishedPageType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public List<PublishedPageType> getPublishedPageList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.aal
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return PublishSettingsTypeImpl.this.getPublishedPageArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bal
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    PublishSettingsTypeImpl.this.setPublishedPageArray(((Integer) obj).intValue(), (PublishedPageType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cal
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return PublishSettingsTypeImpl.this.insertNewPublishedPage(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dal
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PublishSettingsTypeImpl.this.removePublishedPage(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eal
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(PublishSettingsTypeImpl.this.sizeOfPublishedPageArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public RefreshableDataType[] getRefreshableDataArray() {
        return (RefreshableDataType[]) getXmlObjectArray(PROPERTY_QNAME[1], new RefreshableDataType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public List<RefreshableDataType> getRefreshableDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v9l
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return PublishSettingsTypeImpl.this.getRefreshableDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w9l
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    PublishSettingsTypeImpl.this.setRefreshableDataArray(((Integer) obj).intValue(), (RefreshableDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x9l
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return PublishSettingsTypeImpl.this.insertNewRefreshableData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y9l
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PublishSettingsTypeImpl.this.removeRefreshableData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z9l
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(PublishSettingsTypeImpl.this.sizeOfRefreshableDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public PublishedPageType insertNewPublishedPage(int i) {
        PublishedPageType publishedPageType;
        synchronized (monitor()) {
            check_orphaned();
            publishedPageType = (PublishedPageType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return publishedPageType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public RefreshableDataType insertNewRefreshableData(int i) {
        RefreshableDataType refreshableDataType;
        synchronized (monitor()) {
            check_orphaned();
            refreshableDataType = (RefreshableDataType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return refreshableDataType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public void removePublishedPage(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public void removeRefreshableData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public void setPublishedPageArray(PublishedPageType[] publishedPageTypeArr) {
        check_orphaned();
        arraySetterHelper(publishedPageTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public void setRefreshableDataArray(RefreshableDataType[] refreshableDataTypeArr) {
        check_orphaned();
        arraySetterHelper(refreshableDataTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public int sizeOfPublishedPageArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public int sizeOfRefreshableDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public PublishedPageType getPublishedPageArray(int i) {
        PublishedPageType publishedPageType;
        synchronized (monitor()) {
            check_orphaned();
            publishedPageType = (PublishedPageType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (publishedPageType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return publishedPageType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public RefreshableDataType getRefreshableDataArray(int i) {
        RefreshableDataType refreshableDataType;
        synchronized (monitor()) {
            check_orphaned();
            refreshableDataType = (RefreshableDataType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (refreshableDataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return refreshableDataType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public void setPublishedPageArray(int i, PublishedPageType publishedPageType) {
        generatedSetterHelperImpl(publishedPageType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType
    public void setRefreshableDataArray(int i, RefreshableDataType refreshableDataType) {
        generatedSetterHelperImpl(refreshableDataType, PROPERTY_QNAME[1], i, (short) 2);
    }
}
