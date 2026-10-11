package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTOlapPr extends XmlObject {
    public static final DocumentFactory<CTOlapPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOlapPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctolappr0c77type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getLocal();

    String getLocalConnection();

    boolean getLocalRefresh();

    long getRowDrillCount();

    boolean getSendLocale();

    boolean getServerFill();

    boolean getServerFont();

    boolean getServerFontColor();

    boolean getServerNumberFormat();

    boolean isSetLocal();

    boolean isSetLocalConnection();

    boolean isSetLocalRefresh();

    boolean isSetRowDrillCount();

    boolean isSetSendLocale();

    boolean isSetServerFill();

    boolean isSetServerFont();

    boolean isSetServerFontColor();

    boolean isSetServerNumberFormat();

    void setLocal(boolean z);

    void setLocalConnection(String str);

    void setLocalRefresh(boolean z);

    void setRowDrillCount(long j);

    void setSendLocale(boolean z);

    void setServerFill(boolean z);

    void setServerFont(boolean z);

    void setServerFontColor(boolean z);

    void setServerNumberFormat(boolean z);

    void unsetLocal();

    void unsetLocalConnection();

    void unsetLocalRefresh();

    void unsetRowDrillCount();

    void unsetSendLocale();

    void unsetServerFill();

    void unsetServerFont();

    void unsetServerFontColor();

    void unsetServerNumberFormat();

    XmlBoolean xgetLocal();

    STXstring xgetLocalConnection();

    XmlBoolean xgetLocalRefresh();

    XmlUnsignedInt xgetRowDrillCount();

    XmlBoolean xgetSendLocale();

    XmlBoolean xgetServerFill();

    XmlBoolean xgetServerFont();

    XmlBoolean xgetServerFontColor();

    XmlBoolean xgetServerNumberFormat();

    void xsetLocal(XmlBoolean xmlBoolean);

    void xsetLocalConnection(STXstring sTXstring);

    void xsetLocalRefresh(XmlBoolean xmlBoolean);

    void xsetRowDrillCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetSendLocale(XmlBoolean xmlBoolean);

    void xsetServerFill(XmlBoolean xmlBoolean);

    void xsetServerFont(XmlBoolean xmlBoolean);

    void xsetServerFontColor(XmlBoolean xmlBoolean);

    void xsetServerNumberFormat(XmlBoolean xmlBoolean);
}
