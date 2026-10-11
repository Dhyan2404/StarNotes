package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STHtmlFmt;

/* loaded from: classes15.dex */
public interface CTWebPr extends XmlObject {
    public static final DocumentFactory<CTWebPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWebPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwebpre615type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTables addNewTables();

    boolean getConsecutive();

    String getEditPage();

    boolean getFirstRow();

    STHtmlFmt.Enum getHtmlFormat();

    boolean getHtmlTables();

    boolean getParsePre();

    String getPost();

    boolean getSourceData();

    CTTables getTables();

    boolean getTextDates();

    String getUrl();

    boolean getXl2000();

    boolean getXl97();

    boolean getXml();

    boolean isSetConsecutive();

    boolean isSetEditPage();

    boolean isSetFirstRow();

    boolean isSetHtmlFormat();

    boolean isSetHtmlTables();

    boolean isSetParsePre();

    boolean isSetPost();

    boolean isSetSourceData();

    boolean isSetTables();

    boolean isSetTextDates();

    boolean isSetUrl();

    boolean isSetXl2000();

    boolean isSetXl97();

    boolean isSetXml();

    void setConsecutive(boolean z);

    void setEditPage(String str);

    void setFirstRow(boolean z);

    void setHtmlFormat(STHtmlFmt.Enum r1);

    void setHtmlTables(boolean z);

    void setParsePre(boolean z);

    void setPost(String str);

    void setSourceData(boolean z);

    void setTables(CTTables cTTables);

    void setTextDates(boolean z);

    void setUrl(String str);

    void setXl2000(boolean z);

    void setXl97(boolean z);

    void setXml(boolean z);

    void unsetConsecutive();

    void unsetEditPage();

    void unsetFirstRow();

    void unsetHtmlFormat();

    void unsetHtmlTables();

    void unsetParsePre();

    void unsetPost();

    void unsetSourceData();

    void unsetTables();

    void unsetTextDates();

    void unsetUrl();

    void unsetXl2000();

    void unsetXl97();

    void unsetXml();

    XmlBoolean xgetConsecutive();

    STXstring xgetEditPage();

    XmlBoolean xgetFirstRow();

    STHtmlFmt xgetHtmlFormat();

    XmlBoolean xgetHtmlTables();

    XmlBoolean xgetParsePre();

    STXstring xgetPost();

    XmlBoolean xgetSourceData();

    XmlBoolean xgetTextDates();

    STXstring xgetUrl();

    XmlBoolean xgetXl2000();

    XmlBoolean xgetXl97();

    XmlBoolean xgetXml();

    void xsetConsecutive(XmlBoolean xmlBoolean);

    void xsetEditPage(STXstring sTXstring);

    void xsetFirstRow(XmlBoolean xmlBoolean);

    void xsetHtmlFormat(STHtmlFmt sTHtmlFmt);

    void xsetHtmlTables(XmlBoolean xmlBoolean);

    void xsetParsePre(XmlBoolean xmlBoolean);

    void xsetPost(STXstring sTXstring);

    void xsetSourceData(XmlBoolean xmlBoolean);

    void xsetTextDates(XmlBoolean xmlBoolean);

    void xsetUrl(STXstring sTXstring);

    void xsetXl2000(XmlBoolean xmlBoolean);

    void xsetXl97(XmlBoolean xmlBoolean);

    void xsetXml(XmlBoolean xmlBoolean);
}
