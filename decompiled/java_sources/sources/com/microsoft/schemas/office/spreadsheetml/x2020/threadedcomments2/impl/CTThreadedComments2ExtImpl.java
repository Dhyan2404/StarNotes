package com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.impl;

import com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTCommentHyperlink;
import com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext;
import com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.impl.CTThreadedComments2ExtImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTThreadedComments2ExtImpl extends XmlComplexContentImpl implements CTThreadedComments2Ext {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/spreadsheetml/2020/threadedcomments2", "checksum"), new QName("http://schemas.microsoft.com/office/spreadsheetml/2020/threadedcomments2", "hyperlink")};
    private static final long serialVersionUID = 1;

    public CTThreadedComments2ExtImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public CTCommentHyperlink addNewHyperlink() {
        CTCommentHyperlink cTCommentHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentHyperlink = (CTCommentHyperlink) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTCommentHyperlink;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public long getChecksum() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public CTCommentHyperlink[] getHyperlinkArray() {
        return (CTCommentHyperlink[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTCommentHyperlink[0]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public List<CTCommentHyperlink> getHyperlinkList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gsc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTThreadedComments2ExtImpl.this.getHyperlinkArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hsc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTThreadedComments2ExtImpl.this.setHyperlinkArray(((Integer) obj).intValue(), (CTCommentHyperlink) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.isc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTThreadedComments2ExtImpl.this.insertNewHyperlink(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jsc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTThreadedComments2ExtImpl.this.removeHyperlink(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ksc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTThreadedComments2ExtImpl.this.sizeOfHyperlinkArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public CTCommentHyperlink insertNewHyperlink(int i) {
        CTCommentHyperlink cTCommentHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentHyperlink = (CTCommentHyperlink) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTCommentHyperlink;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public void removeHyperlink(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public void setChecksum(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public void setHyperlinkArray(CTCommentHyperlink[] cTCommentHyperlinkArr) {
        check_orphaned();
        arraySetterHelper(cTCommentHyperlinkArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public int sizeOfHyperlinkArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public XmlUnsignedInt xgetChecksum() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public void xsetChecksum(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_element_user(qNameArr[0]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public CTCommentHyperlink getHyperlinkArray(int i) {
        CTCommentHyperlink cTCommentHyperlink;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentHyperlink = (CTCommentHyperlink) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTCommentHyperlink == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCommentHyperlink;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2.CTThreadedComments2Ext
    public void setHyperlinkArray(int i, CTCommentHyperlink cTCommentHyperlink) {
        generatedSetterHelperImpl(cTCommentHyperlink, PROPERTY_QNAME[1], i, (short) 2);
    }
}
