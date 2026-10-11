package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrame;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameLayout;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFramesetSplitbar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTFramesetImpl;

/* loaded from: classes16.dex */
public class CTFramesetImpl extends XmlComplexContentImpl implements CTFrameset {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "sz"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "framesetSplitbar"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "frameLayout"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "title"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "frameset"), new QName(XSSFRelation.NS_WORDPROCESSINGML, TypedValues.AttributesType.S_FRAME)};
    private static final long serialVersionUID = 1;

    public CTFramesetImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrame addNewFrame() {
        CTFrame cTFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTFrame = (CTFrame) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTFrame;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrameLayout addNewFrameLayout() {
        CTFrameLayout cTFrameLayout;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameLayout = (CTFrameLayout) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTFrameLayout;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrameset addNewFrameset() {
        CTFrameset cTFrameset;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameset = (CTFrameset) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTFrameset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFramesetSplitbar addNewFramesetSplitbar() {
        CTFramesetSplitbar cTFramesetSplitbar;
        synchronized (monitor()) {
            check_orphaned();
            cTFramesetSplitbar = (CTFramesetSplitbar) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTFramesetSplitbar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTString addNewSz() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTString addNewTitle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrame[] getFrameArray() {
        return (CTFrame[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTFrame[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrameLayout getFrameLayout() {
        CTFrameLayout cTFrameLayout;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameLayout = (CTFrameLayout) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTFrameLayout == null) {
                cTFrameLayout = null;
            }
        }
        return cTFrameLayout;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public List<CTFrame> getFrameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFramesetImpl.this.getFrameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q24
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFramesetImpl.this.setFrameArray(((Integer) obj).intValue(), (CTFrame) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFramesetImpl.this.insertNewFrame(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s24
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFramesetImpl.this.removeFrame(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t24
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFramesetImpl.this.sizeOfFrameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrameset[] getFramesetArray() {
        return (CTFrameset[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTFrameset[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public List<CTFrameset> getFramesetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFramesetImpl.this.getFramesetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l24
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFramesetImpl.this.setFramesetArray(((Integer) obj).intValue(), (CTFrameset) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFramesetImpl.this.insertNewFrameset(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n24
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFramesetImpl.this.removeFrameset(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o24
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFramesetImpl.this.sizeOfFramesetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFramesetSplitbar getFramesetSplitbar() {
        CTFramesetSplitbar cTFramesetSplitbar;
        synchronized (monitor()) {
            check_orphaned();
            cTFramesetSplitbar = (CTFramesetSplitbar) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTFramesetSplitbar == null) {
                cTFramesetSplitbar = null;
            }
        }
        return cTFramesetSplitbar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTString getSz() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTString getTitle() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrame insertNewFrame(int i) {
        CTFrame cTFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTFrame = (CTFrame) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTFrame;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrameset insertNewFrameset(int i) {
        CTFrameset cTFrameset;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameset = (CTFrameset) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTFrameset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public boolean isSetFrameLayout() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public boolean isSetFramesetSplitbar() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public boolean isSetSz() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public boolean isSetTitle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void removeFrame(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void removeFrameset(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setFrameArray(CTFrame[] cTFrameArr) {
        check_orphaned();
        arraySetterHelper(cTFrameArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setFrameLayout(CTFrameLayout cTFrameLayout) {
        generatedSetterHelperImpl(cTFrameLayout, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setFramesetArray(CTFrameset[] cTFramesetArr) {
        check_orphaned();
        arraySetterHelper(cTFramesetArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setFramesetSplitbar(CTFramesetSplitbar cTFramesetSplitbar) {
        generatedSetterHelperImpl(cTFramesetSplitbar, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setSz(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setTitle(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public int sizeOfFrameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public int sizeOfFramesetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void unsetFrameLayout() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void unsetFramesetSplitbar() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void unsetSz() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void unsetTitle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrame getFrameArray(int i) {
        CTFrame cTFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTFrame = (CTFrame) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTFrame == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFrame;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public CTFrameset getFramesetArray(int i) {
        CTFrameset cTFrameset;
        synchronized (monitor()) {
            check_orphaned();
            cTFrameset = (CTFrameset) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTFrameset == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFrameset;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setFrameArray(int i, CTFrame cTFrame) {
        generatedSetterHelperImpl(cTFrame, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameset
    public void setFramesetArray(int i, CTFrameset cTFrameset) {
        generatedSetterHelperImpl(cTFrameset, PROPERTY_QNAME[4], i, (short) 2);
    }
}
