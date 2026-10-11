package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLChartSubelementType;

/* loaded from: classes14.dex */
public interface CTTLOleChartTargetElement extends XmlObject {
    public static final DocumentFactory<CTTLOleChartTargetElement> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLOleChartTargetElement> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlolecharttargetelement04f2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getLvl();

    STTLChartSubelementType.Enum getType();

    boolean isSetLvl();

    void setLvl(long j);

    void setType(STTLChartSubelementType.Enum r1);

    void unsetLvl();

    XmlUnsignedInt xgetLvl();

    STTLChartSubelementType xgetType();

    void xsetLvl(XmlUnsignedInt xmlUnsignedInt);

    void xsetType(STTLChartSubelementType sTTLChartSubelementType);
}
