package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;

/* loaded from: classes7.dex */
public interface ChartTrackingRefBasedDocument extends XmlObject {
    public static final DocumentFactory<ChartTrackingRefBasedDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ChartTrackingRefBasedDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "charttrackingrefbasedb44fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewChartTrackingRefBased();

    CTOnOff getChartTrackingRefBased();

    void setChartTrackingRefBased(CTOnOff cTOnOff);
}
