package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.ColorsType;
import com.microsoft.schemas.office.visio.x2012.main.DocumentSettingsType;
import com.microsoft.schemas.office.visio.x2012.main.DocumentSheetType;
import com.microsoft.schemas.office.visio.x2012.main.EventListType;
import com.microsoft.schemas.office.visio.x2012.main.FaceNamesType;
import com.microsoft.schemas.office.visio.x2012.main.HeaderFooterType;
import com.microsoft.schemas.office.visio.x2012.main.PublishSettingsType;
import com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType;
import com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class VisioDocumentTypeImpl extends XmlComplexContentImpl implements VisioDocumentType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "DocumentSettings"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "Colors"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "FaceNames"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "StyleSheets"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "DocumentSheet"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "EventList"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "HeaderFooter"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "PublishSettings")};
    private static final long serialVersionUID = 1;

    public VisioDocumentTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public ColorsType addNewColors() {
        ColorsType colorsType;
        synchronized (monitor()) {
            check_orphaned();
            colorsType = (ColorsType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return colorsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public DocumentSettingsType addNewDocumentSettings() {
        DocumentSettingsType documentSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            documentSettingsType = (DocumentSettingsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return documentSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public DocumentSheetType addNewDocumentSheet() {
        DocumentSheetType documentSheetType;
        synchronized (monitor()) {
            check_orphaned();
            documentSheetType = (DocumentSheetType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return documentSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public EventListType addNewEventList() {
        EventListType eventListType;
        synchronized (monitor()) {
            check_orphaned();
            eventListType = (EventListType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return eventListType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public FaceNamesType addNewFaceNames() {
        FaceNamesType faceNamesType;
        synchronized (monitor()) {
            check_orphaned();
            faceNamesType = (FaceNamesType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return faceNamesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public HeaderFooterType addNewHeaderFooter() {
        HeaderFooterType headerFooterType;
        synchronized (monitor()) {
            check_orphaned();
            headerFooterType = (HeaderFooterType) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return headerFooterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public PublishSettingsType addNewPublishSettings() {
        PublishSettingsType publishSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            publishSettingsType = (PublishSettingsType) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return publishSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public StyleSheetsType addNewStyleSheets() {
        StyleSheetsType styleSheetsType;
        synchronized (monitor()) {
            check_orphaned();
            styleSheetsType = (StyleSheetsType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return styleSheetsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public ColorsType getColors() {
        ColorsType colorsType;
        synchronized (monitor()) {
            check_orphaned();
            colorsType = (ColorsType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (colorsType == null) {
                colorsType = null;
            }
        }
        return colorsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public DocumentSettingsType getDocumentSettings() {
        DocumentSettingsType documentSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            documentSettingsType = (DocumentSettingsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (documentSettingsType == null) {
                documentSettingsType = null;
            }
        }
        return documentSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public DocumentSheetType getDocumentSheet() {
        DocumentSheetType documentSheetType;
        synchronized (monitor()) {
            check_orphaned();
            documentSheetType = (DocumentSheetType) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (documentSheetType == null) {
                documentSheetType = null;
            }
        }
        return documentSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public EventListType getEventList() {
        EventListType eventListType;
        synchronized (monitor()) {
            check_orphaned();
            eventListType = (EventListType) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (eventListType == null) {
                eventListType = null;
            }
        }
        return eventListType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public FaceNamesType getFaceNames() {
        FaceNamesType faceNamesType;
        synchronized (monitor()) {
            check_orphaned();
            faceNamesType = (FaceNamesType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (faceNamesType == null) {
                faceNamesType = null;
            }
        }
        return faceNamesType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public HeaderFooterType getHeaderFooter() {
        HeaderFooterType headerFooterType;
        synchronized (monitor()) {
            check_orphaned();
            headerFooterType = (HeaderFooterType) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (headerFooterType == null) {
                headerFooterType = null;
            }
        }
        return headerFooterType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public PublishSettingsType getPublishSettings() {
        PublishSettingsType publishSettingsType;
        synchronized (monitor()) {
            check_orphaned();
            publishSettingsType = (PublishSettingsType) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (publishSettingsType == null) {
                publishSettingsType = null;
            }
        }
        return publishSettingsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public StyleSheetsType getStyleSheets() {
        StyleSheetsType styleSheetsType;
        synchronized (monitor()) {
            check_orphaned();
            styleSheetsType = (StyleSheetsType) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (styleSheetsType == null) {
                styleSheetsType = null;
            }
        }
        return styleSheetsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetColors() {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetDocumentSettings() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetDocumentSheet() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetEventList() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetFaceNames() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetHeaderFooter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetPublishSettings() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public boolean isSetStyleSheets() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setColors(ColorsType colorsType) {
        generatedSetterHelperImpl(colorsType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setDocumentSettings(DocumentSettingsType documentSettingsType) {
        generatedSetterHelperImpl(documentSettingsType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setDocumentSheet(DocumentSheetType documentSheetType) {
        generatedSetterHelperImpl(documentSheetType, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setEventList(EventListType eventListType) {
        generatedSetterHelperImpl(eventListType, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setFaceNames(FaceNamesType faceNamesType) {
        generatedSetterHelperImpl(faceNamesType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setHeaderFooter(HeaderFooterType headerFooterType) {
        generatedSetterHelperImpl(headerFooterType, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setPublishSettings(PublishSettingsType publishSettingsType) {
        generatedSetterHelperImpl(publishSettingsType, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void setStyleSheets(StyleSheetsType styleSheetsType) {
        generatedSetterHelperImpl(styleSheetsType, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetColors() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetDocumentSettings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetDocumentSheet() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetEventList() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetFaceNames() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetHeaderFooter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetPublishSettings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.VisioDocumentType
    public void unsetStyleSheets() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
