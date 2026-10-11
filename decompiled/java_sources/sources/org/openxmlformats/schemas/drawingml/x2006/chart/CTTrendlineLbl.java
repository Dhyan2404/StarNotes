package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;

/* loaded from: classes14.dex */
public interface CTTrendlineLbl extends XmlObject {
    public static final DocumentFactory<CTTrendlineLbl> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrendlineLbl> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrendlinelbl4537type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTLayout addNewLayout();

    CTNumFmt addNewNumFmt();

    CTShapeProperties addNewSpPr();

    CTTx addNewTx();

    CTTextBody addNewTxPr();

    CTExtensionList getExtLst();

    CTLayout getLayout();

    CTNumFmt getNumFmt();

    CTShapeProperties getSpPr();

    CTTx getTx();

    CTTextBody getTxPr();

    boolean isSetExtLst();

    boolean isSetLayout();

    boolean isSetNumFmt();

    boolean isSetSpPr();

    boolean isSetTx();

    boolean isSetTxPr();

    void setExtLst(CTExtensionList cTExtensionList);

    void setLayout(CTLayout cTLayout);

    void setNumFmt(CTNumFmt cTNumFmt);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setTx(CTTx cTTx);

    void setTxPr(CTTextBody cTTextBody);

    void unsetExtLst();

    void unsetLayout();

    void unsetNumFmt();

    void unsetSpPr();

    void unsetTx();

    void unsetTxPr();
}
