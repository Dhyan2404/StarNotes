package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTProtection extends XmlObject {
    public static final DocumentFactory<CTProtection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTProtection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctprotectione383type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBoolean addNewChartObject();

    CTBoolean addNewData();

    CTBoolean addNewFormatting();

    CTBoolean addNewSelection();

    CTBoolean addNewUserInterface();

    CTBoolean getChartObject();

    CTBoolean getData();

    CTBoolean getFormatting();

    CTBoolean getSelection();

    CTBoolean getUserInterface();

    boolean isSetChartObject();

    boolean isSetData();

    boolean isSetFormatting();

    boolean isSetSelection();

    boolean isSetUserInterface();

    void setChartObject(CTBoolean cTBoolean);

    void setData(CTBoolean cTBoolean);

    void setFormatting(CTBoolean cTBoolean);

    void setSelection(CTBoolean cTBoolean);

    void setUserInterface(CTBoolean cTBoolean);

    void unsetChartObject();

    void unsetData();

    void unsetFormatting();

    void unsetSelection();

    void unsetUserInterface();
}
