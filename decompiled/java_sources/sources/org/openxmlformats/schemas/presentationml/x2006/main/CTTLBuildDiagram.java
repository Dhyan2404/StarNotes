package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STDrawingElementId;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLDiagramBuildType;

/* loaded from: classes14.dex */
public interface CTTLBuildDiagram extends XmlObject {
    public static final DocumentFactory<CTTLBuildDiagram> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLBuildDiagram> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlbuilddiagram4048type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTLDiagramBuildType.Enum getBld();

    long getGrpId();

    long getSpid();

    boolean getUiExpand();

    boolean isSetBld();

    boolean isSetUiExpand();

    void setBld(STTLDiagramBuildType.Enum r1);

    void setGrpId(long j);

    void setSpid(long j);

    void setUiExpand(boolean z);

    void unsetBld();

    void unsetUiExpand();

    STTLDiagramBuildType xgetBld();

    XmlUnsignedInt xgetGrpId();

    STDrawingElementId xgetSpid();

    XmlBoolean xgetUiExpand();

    void xsetBld(STTLDiagramBuildType sTTLDiagramBuildType);

    void xsetGrpId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSpid(STDrawingElementId sTDrawingElementId);

    void xsetUiExpand(XmlBoolean xmlBoolean);
}
