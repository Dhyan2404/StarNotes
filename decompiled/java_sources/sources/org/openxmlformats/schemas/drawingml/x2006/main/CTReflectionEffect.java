package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STRectAlignment;

/* loaded from: classes14.dex */
public interface CTReflectionEffect extends XmlObject {
    public static final DocumentFactory<CTReflectionEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTReflectionEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctreflectioneffect9c37type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STRectAlignment.Enum getAlgn();

    long getBlurRad();

    int getDir();

    long getDist();

    Object getEndA();

    Object getEndPos();

    int getFadeDir();

    int getKx();

    int getKy();

    boolean getRotWithShape();

    Object getStA();

    Object getStPos();

    Object getSx();

    Object getSy();

    boolean isSetAlgn();

    boolean isSetBlurRad();

    boolean isSetDir();

    boolean isSetDist();

    boolean isSetEndA();

    boolean isSetEndPos();

    boolean isSetFadeDir();

    boolean isSetKx();

    boolean isSetKy();

    boolean isSetRotWithShape();

    boolean isSetStA();

    boolean isSetStPos();

    boolean isSetSx();

    boolean isSetSy();

    void setAlgn(STRectAlignment.Enum r1);

    void setBlurRad(long j);

    void setDir(int i);

    void setDist(long j);

    void setEndA(Object obj);

    void setEndPos(Object obj);

    void setFadeDir(int i);

    void setKx(int i);

    void setKy(int i);

    void setRotWithShape(boolean z);

    void setStA(Object obj);

    void setStPos(Object obj);

    void setSx(Object obj);

    void setSy(Object obj);

    void unsetAlgn();

    void unsetBlurRad();

    void unsetDir();

    void unsetDist();

    void unsetEndA();

    void unsetEndPos();

    void unsetFadeDir();

    void unsetKx();

    void unsetKy();

    void unsetRotWithShape();

    void unsetStA();

    void unsetStPos();

    void unsetSx();

    void unsetSy();

    STRectAlignment xgetAlgn();

    STPositiveCoordinate xgetBlurRad();

    STPositiveFixedAngle xgetDir();

    STPositiveCoordinate xgetDist();

    STPositiveFixedPercentage xgetEndA();

    STPositiveFixedPercentage xgetEndPos();

    STPositiveFixedAngle xgetFadeDir();

    STFixedAngle xgetKx();

    STFixedAngle xgetKy();

    XmlBoolean xgetRotWithShape();

    STPositiveFixedPercentage xgetStA();

    STPositiveFixedPercentage xgetStPos();

    STPercentage xgetSx();

    STPercentage xgetSy();

    void xsetAlgn(STRectAlignment sTRectAlignment);

    void xsetBlurRad(STPositiveCoordinate sTPositiveCoordinate);

    void xsetDir(STPositiveFixedAngle sTPositiveFixedAngle);

    void xsetDist(STPositiveCoordinate sTPositiveCoordinate);

    void xsetEndA(STPositiveFixedPercentage sTPositiveFixedPercentage);

    void xsetEndPos(STPositiveFixedPercentage sTPositiveFixedPercentage);

    void xsetFadeDir(STPositiveFixedAngle sTPositiveFixedAngle);

    void xsetKx(STFixedAngle sTFixedAngle);

    void xsetKy(STFixedAngle sTFixedAngle);

    void xsetRotWithShape(XmlBoolean xmlBoolean);

    void xsetStA(STPositiveFixedPercentage sTPositiveFixedPercentage);

    void xsetStPos(STPositiveFixedPercentage sTPositiveFixedPercentage);

    void xsetSx(STPercentage sTPercentage);

    void xsetSy(STPercentage sTPercentage);
}
