package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTFrame extends XmlObject {
    public static final DocumentFactory<CTFrame> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFrame> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctframe8f85type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewLinkedToFile();

    CTRel addNewLongDesc();

    CTPixelsMeasure addNewMarH();

    CTPixelsMeasure addNewMarW();

    CTString addNewName();

    CTOnOff addNewNoResizeAllowed();

    CTFrameScrollbar addNewScrollbar();

    CTRel addNewSourceFileName();

    CTString addNewSz();

    CTString addNewTitle();

    CTOnOff getLinkedToFile();

    CTRel getLongDesc();

    CTPixelsMeasure getMarH();

    CTPixelsMeasure getMarW();

    CTString getName();

    CTOnOff getNoResizeAllowed();

    CTFrameScrollbar getScrollbar();

    CTRel getSourceFileName();

    CTString getSz();

    CTString getTitle();

    boolean isSetLinkedToFile();

    boolean isSetLongDesc();

    boolean isSetMarH();

    boolean isSetMarW();

    boolean isSetName();

    boolean isSetNoResizeAllowed();

    boolean isSetScrollbar();

    boolean isSetSourceFileName();

    boolean isSetSz();

    boolean isSetTitle();

    void setLinkedToFile(CTOnOff cTOnOff);

    void setLongDesc(CTRel cTRel);

    void setMarH(CTPixelsMeasure cTPixelsMeasure);

    void setMarW(CTPixelsMeasure cTPixelsMeasure);

    void setName(CTString cTString);

    void setNoResizeAllowed(CTOnOff cTOnOff);

    void setScrollbar(CTFrameScrollbar cTFrameScrollbar);

    void setSourceFileName(CTRel cTRel);

    void setSz(CTString cTString);

    void setTitle(CTString cTString);

    void unsetLinkedToFile();

    void unsetLongDesc();

    void unsetMarH();

    void unsetMarW();

    void unsetName();

    void unsetNoResizeAllowed();

    void unsetScrollbar();

    void unsetSourceFileName();

    void unsetSz();

    void unsetTitle();
}
