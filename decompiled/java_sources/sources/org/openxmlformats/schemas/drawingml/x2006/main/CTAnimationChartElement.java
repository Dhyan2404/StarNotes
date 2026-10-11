package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STChartBuildStep;

/* loaded from: classes14.dex */
public interface CTAnimationChartElement extends XmlObject {
    public static final DocumentFactory<CTAnimationChartElement> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimationChartElement> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimationchartelemente953type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STChartBuildStep.Enum getBldStep();

    int getCategoryIdx();

    int getSeriesIdx();

    boolean isSetCategoryIdx();

    boolean isSetSeriesIdx();

    void setBldStep(STChartBuildStep.Enum r1);

    void setCategoryIdx(int i);

    void setSeriesIdx(int i);

    void unsetCategoryIdx();

    void unsetSeriesIdx();

    STChartBuildStep xgetBldStep();

    XmlInt xgetCategoryIdx();

    XmlInt xgetSeriesIdx();

    void xsetBldStep(STChartBuildStep sTChartBuildStep);

    void xsetCategoryIdx(XmlInt xmlInt);

    void xsetSeriesIdx(XmlInt xmlInt);
}
