package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTChartsheetPr extends XmlObject {
    public static final DocumentFactory<CTChartsheetPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChartsheetPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchartsheetpre0actype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColor addNewTabColor();

    String getCodeName();

    boolean getPublished();

    CTColor getTabColor();

    boolean isSetCodeName();

    boolean isSetPublished();

    boolean isSetTabColor();

    void setCodeName(String str);

    void setPublished(boolean z);

    void setTabColor(CTColor cTColor);

    void unsetCodeName();

    void unsetPublished();

    void unsetTabColor();

    XmlString xgetCodeName();

    XmlBoolean xgetPublished();

    void xsetCodeName(XmlString xmlString);

    void xsetPublished(XmlBoolean xmlBoolean);
}
