package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTHtmlPublishProperties extends XmlObject {
    public static final DocumentFactory<CTHtmlPublishProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHtmlPublishProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cthtmlpublishproperties1c78type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCustomShowId addNewCustShow();

    CTExtensionList addNewExtLst();

    CTEmpty addNewSldAll();

    CTIndexRange addNewSldRg();

    CTCustomShowId getCustShow();

    CTExtensionList getExtLst();

    String getId();

    boolean getShowSpeakerNotes();

    CTEmpty getSldAll();

    CTIndexRange getSldRg();

    String getTarget();

    String getTitle();

    boolean isSetCustShow();

    boolean isSetExtLst();

    boolean isSetShowSpeakerNotes();

    boolean isSetSldAll();

    boolean isSetSldRg();

    boolean isSetTarget();

    boolean isSetTitle();

    void setCustShow(CTCustomShowId cTCustomShowId);

    void setExtLst(CTExtensionList cTExtensionList);

    void setId(String str);

    void setShowSpeakerNotes(boolean z);

    void setSldAll(CTEmpty cTEmpty);

    void setSldRg(CTIndexRange cTIndexRange);

    void setTarget(String str);

    void setTitle(String str);

    void unsetCustShow();

    void unsetExtLst();

    void unsetShowSpeakerNotes();

    void unsetSldAll();

    void unsetSldRg();

    void unsetTarget();

    void unsetTitle();

    STRelationshipId xgetId();

    XmlBoolean xgetShowSpeakerNotes();

    XmlString xgetTarget();

    XmlString xgetTitle();

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetShowSpeakerNotes(XmlBoolean xmlBoolean);

    void xsetTarget(XmlString xmlString);

    void xsetTitle(XmlString xmlString);
}
