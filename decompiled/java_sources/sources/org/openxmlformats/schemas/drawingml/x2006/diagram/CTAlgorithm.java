package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAlgorithmType;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTAlgorithm extends XmlObject {
    public static final DocumentFactory<CTAlgorithm> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAlgorithm> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctalgorithmb98ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTParameter addNewParam();

    CTOfficeArtExtensionList getExtLst();

    CTParameter getParamArray(int i);

    CTParameter[] getParamArray();

    List<CTParameter> getParamList();

    long getRev();

    STAlgorithmType.Enum getType();

    CTParameter insertNewParam(int i);

    boolean isSetExtLst();

    boolean isSetRev();

    void removeParam(int i);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setParamArray(int i, CTParameter cTParameter);

    void setParamArray(CTParameter[] cTParameterArr);

    void setRev(long j);

    void setType(STAlgorithmType.Enum r1);

    int sizeOfParamArray();

    void unsetExtLst();

    void unsetRev();

    XmlUnsignedInt xgetRev();

    STAlgorithmType xgetType();

    void xsetRev(XmlUnsignedInt xmlUnsignedInt);

    void xsetType(STAlgorithmType sTAlgorithmType);
}
