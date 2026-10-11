package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTFramesetSplitbar extends XmlObject {
    public static final DocumentFactory<CTFramesetSplitbar> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFramesetSplitbar> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctframesetsplitbar11fatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColor addNewColor();

    CTOnOff addNewFlatBorders();

    CTOnOff addNewNoBorder();

    CTTwipsMeasure addNewW();

    CTColor getColor();

    CTOnOff getFlatBorders();

    CTOnOff getNoBorder();

    CTTwipsMeasure getW();

    boolean isSetColor();

    boolean isSetFlatBorders();

    boolean isSetNoBorder();

    boolean isSetW();

    void setColor(CTColor cTColor);

    void setFlatBorders(CTOnOff cTOnOff);

    void setNoBorder(CTOnOff cTOnOff);

    void setW(CTTwipsMeasure cTTwipsMeasure);

    void unsetColor();

    void unsetFlatBorders();

    void unsetNoBorder();

    void unsetW();
}
