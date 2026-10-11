package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import androidx.core.app.NotificationCompat;
import com.sunia.HTREnginev2.gj0;
import com.sunia.HTREnginev2.hj0;
import com.sunia.HTREnginev2.ld1;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTAuthorsImpl;

/* loaded from: classes15.dex */
public class CTAuthorsImpl extends XmlComplexContentImpl implements CTAuthors {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, NotificationCompat.CarExtender.f4973i)};
    private static final long serialVersionUID = 1;

    public CTAuthorsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getAuthorArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STXstring[] lambda$xgetAuthorArray$1(int i) {
        return new STXstring[i];
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public void addAuthor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public STXstring addNewAuthor() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public String[] getAuthorArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.jj0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getAuthorArray$0;
                lambda$getAuthorArray$0 = CTAuthorsImpl.lambda$getAuthorArray$0(i);
                return lambda$getAuthorArray$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public List<String> getAuthorList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.kj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorsImpl.this.getAuthorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lj0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorsImpl.this.setAuthorArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mj0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorsImpl.this.insertAuthor(((Integer) obj).intValue(), (String) obj2);
                }
            }, new gj0(this), new hj0(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public void insertAuthor(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public STXstring insertNewAuthor(int i) {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public void removeAuthor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public void setAuthorArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public int sizeOfAuthorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public STXstring[] xgetAuthorArray() {
        return (STXstring[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.ij0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STXstring[] lambda$xgetAuthorArray$1;
                lambda$xgetAuthorArray$1 = CTAuthorsImpl.lambda$xgetAuthorArray$1(i);
                return lambda$xgetAuthorArray$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public List<STXstring> xgetAuthorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorsImpl.this.xgetAuthorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ej0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAuthorsImpl.this.xsetAuthorArray(((Integer) obj).intValue(), (STXstring) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAuthorsImpl.this.insertNewAuthor(((Integer) obj).intValue());
                }
            }, new gj0(this), new hj0(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public void xsetAuthorArray(STXstring[] sTXstringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTXstringArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public String getAuthorArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public STXstring xgetAuthorArray(int i) {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (sTXstring == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public void setAuthorArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAuthors
    public void xsetAuthorArray(int i, STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            STXstring sTXstring2 = (STXstring) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (sTXstring2 != null) {
                sTXstring2.set(sTXstring);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
