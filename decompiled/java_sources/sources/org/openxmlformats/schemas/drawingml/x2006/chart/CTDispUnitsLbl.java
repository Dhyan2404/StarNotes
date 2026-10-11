package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;

/* loaded from: classes14.dex */
public interface CTDispUnitsLbl extends XmlObject {
    public static final DocumentFactory<CTDispUnitsLbl> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDispUnitsLbl> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdispunitslbl6e13type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTLayout addNewLayout();

    CTShapeProperties addNewSpPr();

    CTTx addNewTx();

    CTTextBody addNewTxPr();

    CTLayout getLayout();

    CTShapeProperties getSpPr();

    CTTx getTx();

    CTTextBody getTxPr();

    boolean isSetLayout();

    boolean isSetSpPr();

    boolean isSetTx();

    boolean isSetTxPr();

    void setLayout(CTLayout cTLayout);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setTx(CTTx cTTx);

    void setTxPr(CTTextBody cTTextBody);

    void unsetLayout();

    void unsetSpPr();

    void unsetTx();

    void unsetTxPr();
}
