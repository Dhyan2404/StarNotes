package org.openxmlformats.schemas.drawingml.x2006.main.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBodyProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextListStyle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTTextBodyImpl;

/* loaded from: classes14.dex */
public class CTTextBodyImpl extends XmlComplexContentImpl implements CTTextBody {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "bodyPr"), new QName(XSSFRelation.NS_DRAWINGML, "lstStyle"), new QName(XSSFRelation.NS_DRAWINGML, "p")};
    private static final long serialVersionUID = 1;

    public CTTextBodyImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextBodyProperties addNewBodyPr() {
        CTTextBodyProperties cTTextBodyProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTTextBodyProperties = (CTTextBodyProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTextBodyProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextListStyle addNewLstStyle() {
        CTTextListStyle cTTextListStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTTextListStyle = (CTTextListStyle) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTextListStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextParagraph addNewP() {
        CTTextParagraph cTTextParagraph;
        synchronized (monitor()) {
            check_orphaned();
            cTTextParagraph = (CTTextParagraph) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTextParagraph;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextBodyProperties getBodyPr() {
        CTTextBodyProperties cTTextBodyProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTTextBodyProperties = (CTTextBodyProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTextBodyProperties == null) {
                cTTextBodyProperties = null;
            }
        }
        return cTTextBodyProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextListStyle getLstStyle() {
        CTTextListStyle cTTextListStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTTextListStyle = (CTTextListStyle) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTextListStyle == null) {
                cTTextListStyle = null;
            }
        }
        return cTTextListStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextParagraph[] getPArray() {
        return (CTTextParagraph[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTTextParagraph[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public List<CTTextParagraph> getPList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xqc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTextBodyImpl.this.getPArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yqc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTextBodyImpl.this.setPArray(((Integer) obj).intValue(), (CTTextParagraph) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zqc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTextBodyImpl.this.insertNewP(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.arc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTextBodyImpl.this.removeP(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.brc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTextBodyImpl.this.sizeOfPArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextParagraph insertNewP(int i) {
        CTTextParagraph cTTextParagraph;
        synchronized (monitor()) {
            check_orphaned();
            cTTextParagraph = (CTTextParagraph) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTTextParagraph;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public boolean isSetLstStyle() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public void removeP(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public void setBodyPr(CTTextBodyProperties cTTextBodyProperties) {
        generatedSetterHelperImpl(cTTextBodyProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public void setLstStyle(CTTextListStyle cTTextListStyle) {
        generatedSetterHelperImpl(cTTextListStyle, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public void setPArray(CTTextParagraph[] cTTextParagraphArr) {
        check_orphaned();
        arraySetterHelper(cTTextParagraphArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public int sizeOfPArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public void unsetLstStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public CTTextParagraph getPArray(int i) {
        CTTextParagraph cTTextParagraph;
        synchronized (monitor()) {
            check_orphaned();
            cTTextParagraph = (CTTextParagraph) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTTextParagraph == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTextParagraph;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody
    public void setPArray(int i, CTTextParagraph cTTextParagraph) {
        generatedSetterHelperImpl(cTTextParagraph, PROPERTY_QNAME[2], i, (short) 2);
    }
}
