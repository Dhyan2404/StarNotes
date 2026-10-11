package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAnimationGraphicalObjectBuildProperties extends XmlObject {
    public static final DocumentFactory<CTAnimationGraphicalObjectBuildProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimationGraphicalObjectBuildProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimationgraphicalobjectbuildpropertiesd944type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAnimationChartBuildProperties addNewBldChart();

    CTAnimationDgmBuildProperties addNewBldDgm();

    CTAnimationChartBuildProperties getBldChart();

    CTAnimationDgmBuildProperties getBldDgm();

    boolean isSetBldChart();

    boolean isSetBldDgm();

    void setBldChart(CTAnimationChartBuildProperties cTAnimationChartBuildProperties);

    void setBldDgm(CTAnimationDgmBuildProperties cTAnimationDgmBuildProperties);

    void unsetBldChart();

    void unsetBldDgm();
}
