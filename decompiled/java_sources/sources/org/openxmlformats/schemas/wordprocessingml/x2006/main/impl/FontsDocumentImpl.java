package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.onyx.android.sdk.base.utils.FontUtils;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.FontsDocument;

/* loaded from: classes16.dex */
public class FontsDocumentImpl extends XmlComplexContentImpl implements FontsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, FontUtils.FONTS)};
    private static final long serialVersionUID = 1;

    public FontsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.FontsDocument
    public CTFontsList addNewFonts() {
        CTFontsList cTFontsList;
        synchronized (monitor()) {
            check_orphaned();
            cTFontsList = (CTFontsList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFontsList;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.FontsDocument
    public CTFontsList getFonts() {
        CTFontsList cTFontsList;
        synchronized (monitor()) {
            check_orphaned();
            cTFontsList = (CTFontsList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFontsList == null) {
                cTFontsList = null;
            }
        }
        return cTFontsList;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.FontsDocument
    public void setFonts(CTFontsList cTFontsList) {
        generatedSetterHelperImpl(cTFontsList, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
