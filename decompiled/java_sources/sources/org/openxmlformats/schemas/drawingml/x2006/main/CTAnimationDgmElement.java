package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STDgmBuildStep;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes14.dex */
public interface CTAnimationDgmElement extends XmlObject {
    public static final DocumentFactory<CTAnimationDgmElement> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimationDgmElement> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimationdgmelemente027type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDgmBuildStep.Enum getBldStep();

    String getId();

    boolean isSetBldStep();

    boolean isSetId();

    void setBldStep(STDgmBuildStep.Enum r1);

    void setId(String str);

    void unsetBldStep();

    void unsetId();

    STDgmBuildStep xgetBldStep();

    STGuid xgetId();

    void xsetBldStep(STDgmBuildStep sTDgmBuildStep);

    void xsetId(STGuid sTGuid);
}
