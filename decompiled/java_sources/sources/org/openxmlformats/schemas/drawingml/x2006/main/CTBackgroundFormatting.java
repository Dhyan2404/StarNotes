package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBackgroundFormatting extends XmlObject {
    public static final DocumentFactory<CTBackgroundFormatting> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBackgroundFormatting> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbackgroundformattingec0etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBlipFillProperties addNewBlipFill();

    CTEffectContainer addNewEffectDag();

    CTEffectList addNewEffectLst();

    CTGradientFillProperties addNewGradFill();

    CTGroupFillProperties addNewGrpFill();

    CTNoFillProperties addNewNoFill();

    CTPatternFillProperties addNewPattFill();

    CTSolidColorFillProperties addNewSolidFill();

    CTBlipFillProperties getBlipFill();

    CTEffectContainer getEffectDag();

    CTEffectList getEffectLst();

    CTGradientFillProperties getGradFill();

    CTGroupFillProperties getGrpFill();

    CTNoFillProperties getNoFill();

    CTPatternFillProperties getPattFill();

    CTSolidColorFillProperties getSolidFill();

    boolean isSetBlipFill();

    boolean isSetEffectDag();

    boolean isSetEffectLst();

    boolean isSetGradFill();

    boolean isSetGrpFill();

    boolean isSetNoFill();

    boolean isSetPattFill();

    boolean isSetSolidFill();

    void setBlipFill(CTBlipFillProperties cTBlipFillProperties);

    void setEffectDag(CTEffectContainer cTEffectContainer);

    void setEffectLst(CTEffectList cTEffectList);

    void setGradFill(CTGradientFillProperties cTGradientFillProperties);

    void setGrpFill(CTGroupFillProperties cTGroupFillProperties);

    void setNoFill(CTNoFillProperties cTNoFillProperties);

    void setPattFill(CTPatternFillProperties cTPatternFillProperties);

    void setSolidFill(CTSolidColorFillProperties cTSolidColorFillProperties);

    void unsetBlipFill();

    void unsetEffectDag();

    void unsetEffectLst();

    void unsetGradFill();

    void unsetGrpFill();

    void unsetNoFill();

    void unsetPattFill();

    void unsetSolidFill();
}
