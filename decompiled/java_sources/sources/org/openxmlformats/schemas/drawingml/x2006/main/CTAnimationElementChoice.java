package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAnimationElementChoice extends XmlObject {
    public static final DocumentFactory<CTAnimationElementChoice> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimationElementChoice> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimationelementchoice9db4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAnimationChartElement addNewChart();

    CTAnimationDgmElement addNewDgm();

    CTAnimationChartElement getChart();

    CTAnimationDgmElement getDgm();

    boolean isSetChart();

    boolean isSetDgm();

    void setChart(CTAnimationChartElement cTAnimationChartElement);

    void setDgm(CTAnimationDgmElement cTAnimationDgmElement);

    void unsetChart();

    void unsetDgm();
}
