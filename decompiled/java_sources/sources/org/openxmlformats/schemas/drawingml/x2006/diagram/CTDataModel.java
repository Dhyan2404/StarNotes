package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBackgroundFormatting;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTWholeE2OFormatting;

/* loaded from: classes14.dex */
public interface CTDataModel extends XmlObject {
    public static final DocumentFactory<CTDataModel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDataModel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdatamodel8e5ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBackgroundFormatting addNewBg();

    CTCxnList addNewCxnLst();

    CTOfficeArtExtensionList addNewExtLst();

    CTPtList addNewPtLst();

    CTWholeE2OFormatting addNewWhole();

    CTBackgroundFormatting getBg();

    CTCxnList getCxnLst();

    CTOfficeArtExtensionList getExtLst();

    CTPtList getPtLst();

    CTWholeE2OFormatting getWhole();

    boolean isSetBg();

    boolean isSetCxnLst();

    boolean isSetExtLst();

    boolean isSetWhole();

    void setBg(CTBackgroundFormatting cTBackgroundFormatting);

    void setCxnLst(CTCxnList cTCxnList);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setPtLst(CTPtList cTPtList);

    void setWhole(CTWholeE2OFormatting cTWholeE2OFormatting);

    void unsetBg();

    void unsetCxnLst();

    void unsetExtLst();

    void unsetWhole();
}
