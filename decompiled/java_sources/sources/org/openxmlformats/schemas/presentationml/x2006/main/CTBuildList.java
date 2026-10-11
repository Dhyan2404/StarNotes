package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBuildList extends XmlObject {
    public static final DocumentFactory<CTBuildList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBuildList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbuildlistede3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLBuildDiagram addNewBldDgm();

    CTTLGraphicalObjectBuild addNewBldGraphic();

    CTTLOleBuildChart addNewBldOleChart();

    CTTLBuildParagraph addNewBldP();

    CTTLBuildDiagram getBldDgmArray(int i);

    CTTLBuildDiagram[] getBldDgmArray();

    List<CTTLBuildDiagram> getBldDgmList();

    CTTLGraphicalObjectBuild getBldGraphicArray(int i);

    CTTLGraphicalObjectBuild[] getBldGraphicArray();

    List<CTTLGraphicalObjectBuild> getBldGraphicList();

    CTTLOleBuildChart getBldOleChartArray(int i);

    CTTLOleBuildChart[] getBldOleChartArray();

    List<CTTLOleBuildChart> getBldOleChartList();

    CTTLBuildParagraph getBldPArray(int i);

    CTTLBuildParagraph[] getBldPArray();

    List<CTTLBuildParagraph> getBldPList();

    CTTLBuildDiagram insertNewBldDgm(int i);

    CTTLGraphicalObjectBuild insertNewBldGraphic(int i);

    CTTLOleBuildChart insertNewBldOleChart(int i);

    CTTLBuildParagraph insertNewBldP(int i);

    void removeBldDgm(int i);

    void removeBldGraphic(int i);

    void removeBldOleChart(int i);

    void removeBldP(int i);

    void setBldDgmArray(int i, CTTLBuildDiagram cTTLBuildDiagram);

    void setBldDgmArray(CTTLBuildDiagram[] cTTLBuildDiagramArr);

    void setBldGraphicArray(int i, CTTLGraphicalObjectBuild cTTLGraphicalObjectBuild);

    void setBldGraphicArray(CTTLGraphicalObjectBuild[] cTTLGraphicalObjectBuildArr);

    void setBldOleChartArray(int i, CTTLOleBuildChart cTTLOleBuildChart);

    void setBldOleChartArray(CTTLOleBuildChart[] cTTLOleBuildChartArr);

    void setBldPArray(int i, CTTLBuildParagraph cTTLBuildParagraph);

    void setBldPArray(CTTLBuildParagraph[] cTTLBuildParagraphArr);

    int sizeOfBldDgmArray();

    int sizeOfBldGraphicArray();

    int sizeOfBldOleChartArray();

    int sizeOfBldPArray();
}
