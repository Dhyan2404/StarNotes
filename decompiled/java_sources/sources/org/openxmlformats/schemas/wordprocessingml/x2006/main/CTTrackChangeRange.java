package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDisplacedByCustomXml;

/* loaded from: classes16.dex */
public interface CTTrackChangeRange extends CTTrackChange {
    public static final DocumentFactory<CTTrackChangeRange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrackChangeRange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrackchangerange0b06type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDisplacedByCustomXml.Enum getDisplacedByCustomXml();

    boolean isSetDisplacedByCustomXml();

    void setDisplacedByCustomXml(STDisplacedByCustomXml.Enum r1);

    void unsetDisplacedByCustomXml();

    STDisplacedByCustomXml xgetDisplacedByCustomXml();

    void xsetDisplacedByCustomXml(STDisplacedByCustomXml sTDisplacedByCustomXml);
}
