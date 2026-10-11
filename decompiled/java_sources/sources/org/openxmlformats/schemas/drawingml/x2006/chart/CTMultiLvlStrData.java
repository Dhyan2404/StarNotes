package org.openxmlformats.schemas.drawingml.x2006.chart;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTMultiLvlStrData extends XmlObject {
    public static final DocumentFactory<CTMultiLvlStrData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMultiLvlStrData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmultilvlstrdatafb14type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTLvl addNewLvl();

    CTUnsignedInt addNewPtCount();

    CTExtensionList getExtLst();

    CTLvl getLvlArray(int i);

    CTLvl[] getLvlArray();

    List<CTLvl> getLvlList();

    CTUnsignedInt getPtCount();

    CTLvl insertNewLvl(int i);

    boolean isSetExtLst();

    boolean isSetPtCount();

    void removeLvl(int i);

    void setExtLst(CTExtensionList cTExtensionList);

    void setLvlArray(int i, CTLvl cTLvl);

    void setLvlArray(CTLvl[] cTLvlArr);

    void setPtCount(CTUnsignedInt cTUnsignedInt);

    int sizeOfLvlArray();

    void unsetExtLst();

    void unsetPtCount();
}
