package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU;

/* loaded from: classes14.dex */
public interface CTPresentationProperties extends XmlObject {
    public static final DocumentFactory<CTPresentationProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPresentationProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpresentationproperties1858type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorMRU addNewClrMru();

    CTExtensionList addNewExtLst();

    CTHtmlPublishProperties addNewHtmlPubPr();

    CTPrintProperties addNewPrnPr();

    CTShowProperties addNewShowPr();

    CTWebProperties addNewWebPr();

    CTColorMRU getClrMru();

    CTExtensionList getExtLst();

    CTHtmlPublishProperties getHtmlPubPr();

    CTPrintProperties getPrnPr();

    CTShowProperties getShowPr();

    CTWebProperties getWebPr();

    boolean isSetClrMru();

    boolean isSetExtLst();

    boolean isSetHtmlPubPr();

    boolean isSetPrnPr();

    boolean isSetShowPr();

    boolean isSetWebPr();

    void setClrMru(CTColorMRU cTColorMRU);

    void setExtLst(CTExtensionList cTExtensionList);

    void setHtmlPubPr(CTHtmlPublishProperties cTHtmlPublishProperties);

    void setPrnPr(CTPrintProperties cTPrintProperties);

    void setShowPr(CTShowProperties cTShowProperties);

    void setWebPr(CTWebProperties cTWebProperties);

    void unsetClrMru();

    void unsetExtLst();

    void unsetHtmlPubPr();

    void unsetPrnPr();

    void unsetShowPr();

    void unsetWebPr();
}
