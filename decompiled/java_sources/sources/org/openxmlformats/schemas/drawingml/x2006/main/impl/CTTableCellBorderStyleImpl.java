package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sunia.HTREnginev2.gon;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTThemeableLineStyle;

/* loaded from: classes14.dex */
public class CTTableCellBorderStyleImpl extends XmlComplexContentImpl implements CTTableCellBorderStyle {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "left"), new QName(XSSFRelation.NS_DRAWINGML, gon.f71288n0), new QName(XSSFRelation.NS_DRAWINGML, OneDriverConstants.TOP), new QName(XSSFRelation.NS_DRAWINGML, "bottom"), new QName(XSSFRelation.NS_DRAWINGML, "insideH"), new QName(XSSFRelation.NS_DRAWINGML, "insideV"), new QName(XSSFRelation.NS_DRAWINGML, "tl2br"), new QName(XSSFRelation.NS_DRAWINGML, "tr2bl"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTTableCellBorderStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewBottom() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewInsideH() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewInsideV() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewLeft() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewRight() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewTl2Br() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewTop() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle addNewTr2Bl() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getBottom() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getInsideH() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getInsideV() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getLeft() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getRight() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getTl2Br() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getTop() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public CTThemeableLineStyle getTr2Bl() {
        CTThemeableLineStyle cTThemeableLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTThemeableLineStyle = (CTThemeableLineStyle) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTThemeableLineStyle == null) {
                cTThemeableLineStyle = null;
            }
        }
        return cTThemeableLineStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetBottom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetInsideH() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetInsideV() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetLeft() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetRight() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetTl2Br() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetTop() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public boolean isSetTr2Bl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setBottom(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setInsideH(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setInsideV(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setLeft(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setRight(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setTl2Br(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setTop(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void setTr2Bl(CTThemeableLineStyle cTThemeableLineStyle) {
        generatedSetterHelperImpl(cTThemeableLineStyle, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetBottom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetInsideH() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetInsideV() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetLeft() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetRight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetTl2Br() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetTop() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableCellBorderStyle
    public void unsetTr2Bl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }
}
