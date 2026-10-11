package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;

/* loaded from: classes14.dex */
public interface CTShowProperties extends XmlObject {
    public static final DocumentFactory<CTShowProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTShowProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctshowproperties7555type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTShowInfoBrowse addNewBrowse();

    CTCustomShowId addNewCustShow();

    CTExtensionList addNewExtLst();

    CTShowInfoKiosk addNewKiosk();

    CTColor addNewPenClr();

    CTEmpty addNewPresent();

    CTEmpty addNewSldAll();

    CTIndexRange addNewSldRg();

    CTShowInfoBrowse getBrowse();

    CTCustomShowId getCustShow();

    CTExtensionList getExtLst();

    CTShowInfoKiosk getKiosk();

    boolean getLoop();

    CTColor getPenClr();

    CTEmpty getPresent();

    boolean getShowAnimation();

    boolean getShowNarration();

    CTEmpty getSldAll();

    CTIndexRange getSldRg();

    boolean getUseTimings();

    boolean isSetBrowse();

    boolean isSetCustShow();

    boolean isSetExtLst();

    boolean isSetKiosk();

    boolean isSetLoop();

    boolean isSetPenClr();

    boolean isSetPresent();

    boolean isSetShowAnimation();

    boolean isSetShowNarration();

    boolean isSetSldAll();

    boolean isSetSldRg();

    boolean isSetUseTimings();

    void setBrowse(CTShowInfoBrowse cTShowInfoBrowse);

    void setCustShow(CTCustomShowId cTCustomShowId);

    void setExtLst(CTExtensionList cTExtensionList);

    void setKiosk(CTShowInfoKiosk cTShowInfoKiosk);

    void setLoop(boolean z);

    void setPenClr(CTColor cTColor);

    void setPresent(CTEmpty cTEmpty);

    void setShowAnimation(boolean z);

    void setShowNarration(boolean z);

    void setSldAll(CTEmpty cTEmpty);

    void setSldRg(CTIndexRange cTIndexRange);

    void setUseTimings(boolean z);

    void unsetBrowse();

    void unsetCustShow();

    void unsetExtLst();

    void unsetKiosk();

    void unsetLoop();

    void unsetPenClr();

    void unsetPresent();

    void unsetShowAnimation();

    void unsetShowNarration();

    void unsetSldAll();

    void unsetSldRg();

    void unsetUseTimings();

    XmlBoolean xgetLoop();

    XmlBoolean xgetShowAnimation();

    XmlBoolean xgetShowNarration();

    XmlBoolean xgetUseTimings();

    void xsetLoop(XmlBoolean xmlBoolean);

    void xsetShowAnimation(XmlBoolean xmlBoolean);

    void xsetShowNarration(XmlBoolean xmlBoolean);

    void xsetUseTimings(XmlBoolean xmlBoolean);
}
