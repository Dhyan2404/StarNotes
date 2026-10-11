package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STDrawingElementId;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLOleChartBuildType;

/* loaded from: classes14.dex */
public interface CTTLOleBuildChart extends XmlObject {
    public static final DocumentFactory<CTTLOleBuildChart> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLOleBuildChart> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlolebuildchartc2eftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAnimBg();

    STTLOleChartBuildType.Enum getBld();

    long getGrpId();

    long getSpid();

    boolean getUiExpand();

    boolean isSetAnimBg();

    boolean isSetBld();

    boolean isSetUiExpand();

    void setAnimBg(boolean z);

    void setBld(STTLOleChartBuildType.Enum r1);

    void setGrpId(long j);

    void setSpid(long j);

    void setUiExpand(boolean z);

    void unsetAnimBg();

    void unsetBld();

    void unsetUiExpand();

    XmlBoolean xgetAnimBg();

    STTLOleChartBuildType xgetBld();

    XmlUnsignedInt xgetGrpId();

    STDrawingElementId xgetSpid();

    XmlBoolean xgetUiExpand();

    void xsetAnimBg(XmlBoolean xmlBoolean);

    void xsetBld(STTLOleChartBuildType sTTLOleChartBuildType);

    void xsetGrpId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSpid(STDrawingElementId sTDrawingElementId);

    void xsetUiExpand(XmlBoolean xmlBoolean);
}
