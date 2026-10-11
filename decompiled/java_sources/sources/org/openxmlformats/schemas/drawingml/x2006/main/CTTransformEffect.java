package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTransformEffect extends XmlObject {
    public static final DocumentFactory<CTTransformEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTransformEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttransformeffect948etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getKx();

    int getKy();

    Object getSx();

    Object getSy();

    Object getTx();

    Object getTy();

    boolean isSetKx();

    boolean isSetKy();

    boolean isSetSx();

    boolean isSetSy();

    boolean isSetTx();

    boolean isSetTy();

    void setKx(int i);

    void setKy(int i);

    void setSx(Object obj);

    void setSy(Object obj);

    void setTx(Object obj);

    void setTy(Object obj);

    void unsetKx();

    void unsetKy();

    void unsetSx();

    void unsetSy();

    void unsetTx();

    void unsetTy();

    STFixedAngle xgetKx();

    STFixedAngle xgetKy();

    STPercentage xgetSx();

    STPercentage xgetSy();

    STCoordinate xgetTx();

    STCoordinate xgetTy();

    void xsetKx(STFixedAngle sTFixedAngle);

    void xsetKy(STFixedAngle sTFixedAngle);

    void xsetSx(STPercentage sTPercentage);

    void xsetSy(STPercentage sTPercentage);

    void xsetTx(STCoordinate sTCoordinate);

    void xsetTy(STCoordinate sTCoordinate);
}
