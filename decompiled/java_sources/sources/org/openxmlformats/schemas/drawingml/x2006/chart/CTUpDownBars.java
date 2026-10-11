package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTUpDownBars extends XmlObject {
    public static final DocumentFactory<CTUpDownBars> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTUpDownBars> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctupdownbarsd79ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTUpDownBar addNewDownBars();

    CTExtensionList addNewExtLst();

    CTGapAmount addNewGapWidth();

    CTUpDownBar addNewUpBars();

    CTUpDownBar getDownBars();

    CTExtensionList getExtLst();

    CTGapAmount getGapWidth();

    CTUpDownBar getUpBars();

    boolean isSetDownBars();

    boolean isSetExtLst();

    boolean isSetGapWidth();

    boolean isSetUpBars();

    void setDownBars(CTUpDownBar cTUpDownBar);

    void setExtLst(CTExtensionList cTExtensionList);

    void setGapWidth(CTGapAmount cTGapAmount);

    void setUpBars(CTUpDownBar cTUpDownBar);

    void unsetDownBars();

    void unsetExtLst();

    void unsetGapWidth();

    void unsetUpBars();
}
