package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.FooterCenterType;
import com.microsoft.schemas.office.visio.x2012.main.FooterLeftType;
import com.microsoft.schemas.office.visio.x2012.main.FooterMarginType;
import com.microsoft.schemas.office.visio.x2012.main.FooterRightType;
import com.microsoft.schemas.office.visio.x2012.main.HeaderCenterType;
import com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType;
import com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType;
import com.microsoft.schemas.office.visio.x2012.main.HeaderLeftType;
import com.microsoft.schemas.office.visio.x2012.main.HeaderMarginType;
import com.microsoft.schemas.office.visio.x2012.main.HeaderRightType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class HeaderFooterTypeImpl extends XmlComplexContentImpl implements HeaderFooterType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "HeaderMargin"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "FooterMargin"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "HeaderLeft"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "HeaderCenter"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "HeaderRight"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "FooterLeft"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "FooterCenter"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "FooterRight"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "HeaderFooterFont"), new QName("", "HeaderFooterColor")};
    private static final long serialVersionUID = 1;

    public HeaderFooterTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterCenterType addNewFooterCenter() {
        FooterCenterType footerCenterType;
        synchronized (monitor()) {
            check_orphaned();
            footerCenterType = (FooterCenterType) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return footerCenterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterLeftType addNewFooterLeft() {
        FooterLeftType footerLeftType;
        synchronized (monitor()) {
            check_orphaned();
            footerLeftType = (FooterLeftType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return footerLeftType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterMarginType addNewFooterMargin() {
        FooterMarginType footerMarginType;
        synchronized (monitor()) {
            check_orphaned();
            footerMarginType = (FooterMarginType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return footerMarginType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterRightType addNewFooterRight() {
        FooterRightType footerRightType;
        synchronized (monitor()) {
            check_orphaned();
            footerRightType = (FooterRightType) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return footerRightType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderCenterType addNewHeaderCenter() {
        HeaderCenterType headerCenterType;
        synchronized (monitor()) {
            check_orphaned();
            headerCenterType = (HeaderCenterType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return headerCenterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderFooterFontType addNewHeaderFooterFont() {
        HeaderFooterFontType headerFooterFontType;
        synchronized (monitor()) {
            check_orphaned();
            headerFooterFontType = (HeaderFooterFontType) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return headerFooterFontType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderLeftType addNewHeaderLeft() {
        HeaderLeftType headerLeftType;
        synchronized (monitor()) {
            check_orphaned();
            headerLeftType = (HeaderLeftType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return headerLeftType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderMarginType addNewHeaderMargin() {
        HeaderMarginType headerMarginType;
        synchronized (monitor()) {
            check_orphaned();
            headerMarginType = (HeaderMarginType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return headerMarginType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderRightType addNewHeaderRight() {
        HeaderRightType headerRightType;
        synchronized (monitor()) {
            check_orphaned();
            headerRightType = (HeaderRightType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return headerRightType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterCenterType getFooterCenter() {
        FooterCenterType footerCenterType;
        synchronized (monitor()) {
            check_orphaned();
            footerCenterType = (FooterCenterType) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (footerCenterType == null) {
                footerCenterType = null;
            }
        }
        return footerCenterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterLeftType getFooterLeft() {
        FooterLeftType footerLeftType;
        synchronized (monitor()) {
            check_orphaned();
            footerLeftType = (FooterLeftType) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (footerLeftType == null) {
                footerLeftType = null;
            }
        }
        return footerLeftType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterMarginType getFooterMargin() {
        FooterMarginType footerMarginType;
        synchronized (monitor()) {
            check_orphaned();
            footerMarginType = (FooterMarginType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (footerMarginType == null) {
                footerMarginType = null;
            }
        }
        return footerMarginType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public FooterRightType getFooterRight() {
        FooterRightType footerRightType;
        synchronized (monitor()) {
            check_orphaned();
            footerRightType = (FooterRightType) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (footerRightType == null) {
                footerRightType = null;
            }
        }
        return footerRightType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderCenterType getHeaderCenter() {
        HeaderCenterType headerCenterType;
        synchronized (monitor()) {
            check_orphaned();
            headerCenterType = (HeaderCenterType) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (headerCenterType == null) {
                headerCenterType = null;
            }
        }
        return headerCenterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public String getHeaderFooterColor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderFooterFontType getHeaderFooterFont() {
        HeaderFooterFontType headerFooterFontType;
        synchronized (monitor()) {
            check_orphaned();
            headerFooterFontType = (HeaderFooterFontType) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (headerFooterFontType == null) {
                headerFooterFontType = null;
            }
        }
        return headerFooterFontType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderLeftType getHeaderLeft() {
        HeaderLeftType headerLeftType;
        synchronized (monitor()) {
            check_orphaned();
            headerLeftType = (HeaderLeftType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (headerLeftType == null) {
                headerLeftType = null;
            }
        }
        return headerLeftType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderMarginType getHeaderMargin() {
        HeaderMarginType headerMarginType;
        synchronized (monitor()) {
            check_orphaned();
            headerMarginType = (HeaderMarginType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (headerMarginType == null) {
                headerMarginType = null;
            }
        }
        return headerMarginType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public HeaderRightType getHeaderRight() {
        HeaderRightType headerRightType;
        synchronized (monitor()) {
            check_orphaned();
            headerRightType = (HeaderRightType) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (headerRightType == null) {
                headerRightType = null;
            }
        }
        return headerRightType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetFooterCenter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetFooterLeft() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetFooterMargin() {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetFooterRight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetHeaderCenter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetHeaderFooterColor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetHeaderFooterFont() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetHeaderLeft() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetHeaderMargin() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public boolean isSetHeaderRight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setFooterCenter(FooterCenterType footerCenterType) {
        generatedSetterHelperImpl(footerCenterType, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setFooterLeft(FooterLeftType footerLeftType) {
        generatedSetterHelperImpl(footerLeftType, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setFooterMargin(FooterMarginType footerMarginType) {
        generatedSetterHelperImpl(footerMarginType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setFooterRight(FooterRightType footerRightType) {
        generatedSetterHelperImpl(footerRightType, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setHeaderCenter(HeaderCenterType headerCenterType) {
        generatedSetterHelperImpl(headerCenterType, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setHeaderFooterColor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setHeaderFooterFont(HeaderFooterFontType headerFooterFontType) {
        generatedSetterHelperImpl(headerFooterFontType, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setHeaderLeft(HeaderLeftType headerLeftType) {
        generatedSetterHelperImpl(headerLeftType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setHeaderMargin(HeaderMarginType headerMarginType) {
        generatedSetterHelperImpl(headerMarginType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void setHeaderRight(HeaderRightType headerRightType) {
        generatedSetterHelperImpl(headerRightType, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetFooterCenter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetFooterLeft() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetFooterMargin() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetFooterRight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetHeaderCenter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetHeaderFooterColor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetHeaderFooterFont() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetHeaderLeft() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetHeaderMargin() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void unsetHeaderRight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public XmlString xgetHeaderFooterColor() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType
    public void xsetHeaderFooterColor(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlString2.set(xmlString);
        }
    }
}
