package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTCTStyleLabel extends XmlObject {
    public static final DocumentFactory<CTCTStyleLabel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCTStyleLabel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctctstylelabela0bdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColors addNewEffectClrLst();

    CTOfficeArtExtensionList addNewExtLst();

    CTColors addNewFillClrLst();

    CTColors addNewLinClrLst();

    CTColors addNewTxEffectClrLst();

    CTColors addNewTxFillClrLst();

    CTColors addNewTxLinClrLst();

    CTColors getEffectClrLst();

    CTOfficeArtExtensionList getExtLst();

    CTColors getFillClrLst();

    CTColors getLinClrLst();

    String getName();

    CTColors getTxEffectClrLst();

    CTColors getTxFillClrLst();

    CTColors getTxLinClrLst();

    boolean isSetEffectClrLst();

    boolean isSetExtLst();

    boolean isSetFillClrLst();

    boolean isSetLinClrLst();

    boolean isSetTxEffectClrLst();

    boolean isSetTxFillClrLst();

    boolean isSetTxLinClrLst();

    void setEffectClrLst(CTColors cTColors);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setFillClrLst(CTColors cTColors);

    void setLinClrLst(CTColors cTColors);

    void setName(String str);

    void setTxEffectClrLst(CTColors cTColors);

    void setTxFillClrLst(CTColors cTColors);

    void setTxLinClrLst(CTColors cTColors);

    void unsetEffectClrLst();

    void unsetExtLst();

    void unsetFillClrLst();

    void unsetLinClrLst();

    void unsetTxEffectClrLst();

    void unsetTxFillClrLst();

    void unsetTxLinClrLst();

    XmlString xgetName();

    void xsetName(XmlString xmlString);
}
