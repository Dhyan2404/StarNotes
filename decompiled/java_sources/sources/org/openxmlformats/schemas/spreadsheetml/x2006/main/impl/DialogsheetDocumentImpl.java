package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDialogsheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.DialogsheetDocument;

/* loaded from: classes15.dex */
public class DialogsheetDocumentImpl extends XmlComplexContentImpl implements DialogsheetDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "dialogsheet")};
    private static final long serialVersionUID = 1;

    public DialogsheetDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.DialogsheetDocument
    public CTDialogsheet addNewDialogsheet() {
        CTDialogsheet cTDialogsheet;
        synchronized (monitor()) {
            check_orphaned();
            cTDialogsheet = (CTDialogsheet) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDialogsheet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.DialogsheetDocument
    public CTDialogsheet getDialogsheet() {
        CTDialogsheet cTDialogsheet;
        synchronized (monitor()) {
            check_orphaned();
            cTDialogsheet = (CTDialogsheet) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDialogsheet == null) {
                cTDialogsheet = null;
            }
        }
        return cTDialogsheet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.DialogsheetDocument
    public void setDialogsheet(CTDialogsheet cTDialogsheet) {
        generatedSetterHelperImpl(cTDialogsheet, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
