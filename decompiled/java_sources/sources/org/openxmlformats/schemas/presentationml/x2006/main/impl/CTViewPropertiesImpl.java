package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNormalViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNotesTextViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNotesViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOutlineViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideSorterViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.STViewType;

/* loaded from: classes14.dex */
public class CTViewPropertiesImpl extends XmlComplexContentImpl implements CTViewProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "normalViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "slideViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "outlineViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "notesTextViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "sorterViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "notesViewPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "gridSpacing"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst"), new QName("", "lastView"), new QName("", "showComments")};
    private static final long serialVersionUID = 1;

    public CTViewPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTPositiveSize2D addNewGridSpacing() {
        CTPositiveSize2D cTPositiveSize2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveSize2D = (CTPositiveSize2D) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTPositiveSize2D;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTNormalViewProperties addNewNormalViewPr() {
        CTNormalViewProperties cTNormalViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNormalViewProperties = (CTNormalViewProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNormalViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTNotesTextViewProperties addNewNotesTextViewPr() {
        CTNotesTextViewProperties cTNotesTextViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNotesTextViewProperties = (CTNotesTextViewProperties) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTNotesTextViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTNotesViewProperties addNewNotesViewPr() {
        CTNotesViewProperties cTNotesViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNotesViewProperties = (CTNotesViewProperties) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTNotesViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTOutlineViewProperties addNewOutlineViewPr() {
        CTOutlineViewProperties cTOutlineViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTOutlineViewProperties = (CTOutlineViewProperties) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOutlineViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTSlideViewProperties addNewSlideViewPr() {
        CTSlideViewProperties cTSlideViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideViewProperties = (CTSlideViewProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSlideViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTSlideSorterViewProperties addNewSorterViewPr() {
        CTSlideSorterViewProperties cTSlideSorterViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideSorterViewProperties = (CTSlideSorterViewProperties) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSlideSorterViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTPositiveSize2D getGridSpacing() {
        CTPositiveSize2D cTPositiveSize2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveSize2D = (CTPositiveSize2D) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTPositiveSize2D == null) {
                cTPositiveSize2D = null;
            }
        }
        return cTPositiveSize2D;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public STViewType.Enum getLastView() {
        STViewType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[8]);
            }
            r5 = simpleValue == null ? null : (STViewType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTNormalViewProperties getNormalViewPr() {
        CTNormalViewProperties cTNormalViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNormalViewProperties = (CTNormalViewProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNormalViewProperties == null) {
                cTNormalViewProperties = null;
            }
        }
        return cTNormalViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTNotesTextViewProperties getNotesTextViewPr() {
        CTNotesTextViewProperties cTNotesTextViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNotesTextViewProperties = (CTNotesTextViewProperties) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTNotesTextViewProperties == null) {
                cTNotesTextViewProperties = null;
            }
        }
        return cTNotesTextViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTNotesViewProperties getNotesViewPr() {
        CTNotesViewProperties cTNotesViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNotesViewProperties = (CTNotesViewProperties) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTNotesViewProperties == null) {
                cTNotesViewProperties = null;
            }
        }
        return cTNotesViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTOutlineViewProperties getOutlineViewPr() {
        CTOutlineViewProperties cTOutlineViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTOutlineViewProperties = (CTOutlineViewProperties) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTOutlineViewProperties == null) {
                cTOutlineViewProperties = null;
            }
        }
        return cTOutlineViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean getShowComments() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTSlideViewProperties getSlideViewPr() {
        CTSlideViewProperties cTSlideViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideViewProperties = (CTSlideViewProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTSlideViewProperties == null) {
                cTSlideViewProperties = null;
            }
        }
        return cTSlideViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public CTSlideSorterViewProperties getSorterViewPr() {
        CTSlideSorterViewProperties cTSlideSorterViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideSorterViewProperties = (CTSlideSorterViewProperties) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTSlideSorterViewProperties == null) {
                cTSlideSorterViewProperties = null;
            }
        }
        return cTSlideSorterViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetGridSpacing() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetLastView() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetNormalViewPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetNotesTextViewPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetNotesViewPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetOutlineViewPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetShowComments() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetSlideViewPr() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public boolean isSetSorterViewPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setGridSpacing(CTPositiveSize2D cTPositiveSize2D) {
        generatedSetterHelperImpl(cTPositiveSize2D, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setLastView(STViewType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setNormalViewPr(CTNormalViewProperties cTNormalViewProperties) {
        generatedSetterHelperImpl(cTNormalViewProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setNotesTextViewPr(CTNotesTextViewProperties cTNotesTextViewProperties) {
        generatedSetterHelperImpl(cTNotesTextViewProperties, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setNotesViewPr(CTNotesViewProperties cTNotesViewProperties) {
        generatedSetterHelperImpl(cTNotesViewProperties, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setOutlineViewPr(CTOutlineViewProperties cTOutlineViewProperties) {
        generatedSetterHelperImpl(cTOutlineViewProperties, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setShowComments(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setSlideViewPr(CTSlideViewProperties cTSlideViewProperties) {
        generatedSetterHelperImpl(cTSlideViewProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void setSorterViewPr(CTSlideSorterViewProperties cTSlideSorterViewProperties) {
        generatedSetterHelperImpl(cTSlideSorterViewProperties, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetGridSpacing() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetLastView() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetNormalViewPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetNotesTextViewPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetNotesViewPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetOutlineViewPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetShowComments() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetSlideViewPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void unsetSorterViewPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public STViewType xgetLastView() {
        STViewType sTViewType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTViewType = (STViewType) typeStore.find_attribute_user(qNameArr[8]);
            if (sTViewType == null) {
                sTViewType = (STViewType) get_default_attribute_value(qNameArr[8]);
            }
        }
        return sTViewType;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public XmlBoolean xgetShowComments() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void xsetLastView(STViewType sTViewType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STViewType sTViewType2 = (STViewType) typeStore.find_attribute_user(qNameArr[8]);
            if (sTViewType2 == null) {
                sTViewType2 = (STViewType) get_store().add_attribute_user(qNameArr[8]);
            }
            sTViewType2.set(sTViewType);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties
    public void xsetShowComments(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
