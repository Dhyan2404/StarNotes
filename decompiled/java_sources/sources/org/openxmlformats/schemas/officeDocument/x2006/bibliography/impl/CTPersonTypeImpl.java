package org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl;

import com.sunia.HTREnginev2.f77;
import com.sunia.HTREnginev2.g77;
import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.m67;
import com.sunia.HTREnginev2.n67;
import com.sunia.HTREnginev2.x67;
import com.sunia.HTREnginev2.y67;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl.CTPersonTypeImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public class CTPersonTypeImpl extends XmlComplexContentImpl implements CTPersonType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Last"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "First"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/bibliography", "Middle")};
    private static final long serialVersionUID = 1;

    public CTPersonTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getFirstArray$2(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getLastArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getMiddleArray$4(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STString[] lambda$xgetFirstArray$3(int i) {
        return new STString[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STString[] lambda$xgetLastArray$1(int i) {
        return new STString[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ STString[] lambda$xgetMiddleArray$5(int i) {
        return new STString[i];
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void addFirst(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[1])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void addLast(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void addMiddle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[2])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString addNewFirst() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString addNewLast() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString addNewMiddle() {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public String[] getFirstArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[1], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.k77
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getFirstArray$2;
                lambda$getFirstArray$2 = CTPersonTypeImpl.lambda$getFirstArray$2(i);
                return lambda$getFirstArray$2;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public List<String> getFirstList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.h77
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.getFirstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i77
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.setFirstArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j77
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.insertFirst(((Integer) obj).intValue(), (String) obj2);
                }
            }, new f77(this), new g77(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public String[] getLastArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.l77
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getLastArray$0;
                lambda$getLastArray$0 = CTPersonTypeImpl.lambda$getLastArray$0(i);
                return lambda$getLastArray$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public List<String> getLastList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.q67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.getLastArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r67
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.setLastArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s67
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.insertLast(((Integer) obj).intValue(), (String) obj2);
                }
            }, new m67(this), new n67(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public String[] getMiddleArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[2], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.o67
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getMiddleArray$4;
                lambda$getMiddleArray$4 = CTPersonTypeImpl.lambda$getMiddleArray$4(i);
                return lambda$getMiddleArray$4;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public List<String> getMiddleList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.a77
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.getMiddleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b77
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.setMiddleArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c77
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.insertMiddle(((Integer) obj).intValue(), (String) obj2);
                }
            }, new x67(this), new y67(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void insertFirst(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[1], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void insertLast(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void insertMiddle(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[2], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString insertNewFirst(int i) {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString insertNewLast(int i) {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString insertNewMiddle(int i) {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void removeFirst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void removeLast(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void removeMiddle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void setFirstArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void setLastArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void setMiddleArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public int sizeOfFirstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public int sizeOfLastArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public int sizeOfMiddleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString[] xgetFirstArray() {
        return (STString[]) xgetArray(PROPERTY_QNAME[1], new IntFunction() { // from class: com.sunia.HTREnginev2.z67
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STString[] lambda$xgetFirstArray$3;
                lambda$xgetFirstArray$3 = CTPersonTypeImpl.lambda$xgetFirstArray$3(i);
                return lambda$xgetFirstArray$3;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public List<STString> xgetFirstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.xgetFirstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t67
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.xsetFirstArray(((Integer) obj).intValue(), (STString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e77
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.insertNewFirst(((Integer) obj).intValue());
                }
            }, new f77(this), new g77(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString[] xgetLastArray() {
        return (STString[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.p67
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STString[] lambda$xgetLastArray$1;
                lambda$xgetLastArray$1 = CTPersonTypeImpl.lambda$xgetLastArray$1(i);
                return lambda$xgetLastArray$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public List<STString> xgetLastList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.xgetLastArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k67
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.xsetLastArray(((Integer) obj).intValue(), (STString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.insertNewLast(((Integer) obj).intValue());
                }
            }, new m67(this), new n67(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString[] xgetMiddleArray() {
        return (STString[]) xgetArray(PROPERTY_QNAME[2], new IntFunction() { // from class: com.sunia.HTREnginev2.d77
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                STString[] lambda$xgetMiddleArray$5;
                lambda$xgetMiddleArray$5 = CTPersonTypeImpl.lambda$xgetMiddleArray$5(i);
                return lambda$xgetMiddleArray$5;
            }
        });
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public List<STString> xgetMiddleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.xgetMiddleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v67
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPersonTypeImpl.this.xsetMiddleArray(((Integer) obj).intValue(), (STString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w67
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPersonTypeImpl.this.insertNewMiddle(((Integer) obj).intValue());
                }
            }, new x67(this), new y67(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void xsetFirstArray(STString[] sTStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTStringArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void xsetLastArray(STString[] sTStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTStringArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void xsetMiddleArray(STString[] sTStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(sTStringArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public String getFirstArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public String getLastArray(int i) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public String getMiddleArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString xgetFirstArray(int i) {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (sTString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString xgetLastArray(int i) {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (sTString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public STString xgetMiddleArray(int i) {
        STString sTString;
        synchronized (monitor()) {
            check_orphaned();
            sTString = (STString) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (sTString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sTString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void setFirstArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void setLastArray(int i, String str) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void setMiddleArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void xsetFirstArray(int i, STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            STString sTString2 = (STString) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (sTString2 != null) {
                sTString2.set(sTString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void xsetLastArray(int i, STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            STString sTString2 = (STString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (sTString2 != null) {
                sTString2.set(sTString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.bibliography.CTPersonType
    public void xsetMiddleArray(int i, STString sTString) {
        synchronized (monitor()) {
            check_orphaned();
            STString sTString2 = (STString) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (sTString2 != null) {
                sTString2.set(sTString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
