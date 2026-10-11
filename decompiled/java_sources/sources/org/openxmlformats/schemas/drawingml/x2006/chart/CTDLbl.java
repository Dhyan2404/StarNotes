package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;

/* loaded from: classes14.dex */
public interface CTDLbl extends XmlObject {
    public static final DocumentFactory<CTDLbl> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDLbl> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdlblb7catype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDLblPos addNewDLblPos();

    CTBoolean addNewDelete();

    CTExtensionList addNewExtLst();

    CTUnsignedInt addNewIdx();

    CTLayout addNewLayout();

    CTNumFmt addNewNumFmt();

    CTBoolean addNewShowBubbleSize();

    CTBoolean addNewShowCatName();

    CTBoolean addNewShowLegendKey();

    CTBoolean addNewShowPercent();

    CTBoolean addNewShowSerName();

    CTBoolean addNewShowVal();

    CTShapeProperties addNewSpPr();

    CTTx addNewTx();

    CTTextBody addNewTxPr();

    CTDLblPos getDLblPos();

    CTBoolean getDelete();

    CTExtensionList getExtLst();

    CTUnsignedInt getIdx();

    CTLayout getLayout();

    CTNumFmt getNumFmt();

    String getSeparator();

    CTBoolean getShowBubbleSize();

    CTBoolean getShowCatName();

    CTBoolean getShowLegendKey();

    CTBoolean getShowPercent();

    CTBoolean getShowSerName();

    CTBoolean getShowVal();

    CTShapeProperties getSpPr();

    CTTx getTx();

    CTTextBody getTxPr();

    boolean isSetDLblPos();

    boolean isSetDelete();

    boolean isSetExtLst();

    boolean isSetLayout();

    boolean isSetNumFmt();

    boolean isSetSeparator();

    boolean isSetShowBubbleSize();

    boolean isSetShowCatName();

    boolean isSetShowLegendKey();

    boolean isSetShowPercent();

    boolean isSetShowSerName();

    boolean isSetShowVal();

    boolean isSetSpPr();

    boolean isSetTx();

    boolean isSetTxPr();

    void setDLblPos(CTDLblPos cTDLblPos);

    void setDelete(CTBoolean cTBoolean);

    void setExtLst(CTExtensionList cTExtensionList);

    void setIdx(CTUnsignedInt cTUnsignedInt);

    void setLayout(CTLayout cTLayout);

    void setNumFmt(CTNumFmt cTNumFmt);

    void setSeparator(String str);

    void setShowBubbleSize(CTBoolean cTBoolean);

    void setShowCatName(CTBoolean cTBoolean);

    void setShowLegendKey(CTBoolean cTBoolean);

    void setShowPercent(CTBoolean cTBoolean);

    void setShowSerName(CTBoolean cTBoolean);

    void setShowVal(CTBoolean cTBoolean);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setTx(CTTx cTTx);

    void setTxPr(CTTextBody cTTextBody);

    void unsetDLblPos();

    void unsetDelete();

    void unsetExtLst();

    void unsetLayout();

    void unsetNumFmt();

    void unsetSeparator();

    void unsetShowBubbleSize();

    void unsetShowCatName();

    void unsetShowLegendKey();

    void unsetShowPercent();

    void unsetShowSerName();

    void unsetShowVal();

    void unsetSpPr();

    void unsetTx();

    void unsetTxPr();

    XmlString xgetSeparator();

    void xsetSeparator(XmlString xmlString);
}
