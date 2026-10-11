package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import com.microsoft.schemas.vml.STFillType;
import com.microsoft.schemas.vml.STImageAspect;
import com.microsoft.schemas.vml.STStrokeArrowLength;
import com.microsoft.schemas.vml.STStrokeArrowType;
import com.microsoft.schemas.vml.STStrokeArrowWidth;
import com.microsoft.schemas.vml.STStrokeEndCap;
import com.microsoft.schemas.vml.STStrokeJoinStyle;
import com.microsoft.schemas.vml.STStrokeLineStyle;
import java.math.BigDecimal;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CTStrokeChild extends XmlObject {
    public static final DocumentFactory<CTStrokeChild> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStrokeChild> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstrokechilde83dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getAlthref();

    String getColor();

    String getColor2();

    String getDashstyle();

    STStrokeArrowType.Enum getEndarrow();

    STStrokeArrowLength.Enum getEndarrowlength();

    STStrokeArrowWidth.Enum getEndarrowwidth();

    STStrokeEndCap.Enum getEndcap();

    STExt.Enum getExt();

    STFillType.Enum getFilltype();

    STTrueFalse.Enum getForcedash();

    String getHref();

    STTrueFalse.Enum getImagealignshape();

    STImageAspect.Enum getImageaspect();

    String getImagesize();

    STTrueFalse.Enum getInsetpen();

    STStrokeJoinStyle.Enum getJoinstyle();

    STStrokeLineStyle.Enum getLinestyle();

    BigDecimal getMiterlimit();

    STTrueFalse.Enum getOn();

    String getOpacity();

    String getSrc();

    STStrokeArrowType.Enum getStartarrow();

    STStrokeArrowLength.Enum getStartarrowlength();

    STStrokeArrowWidth.Enum getStartarrowwidth();

    String getTitle();

    String getWeight();

    boolean isSetAlthref();

    boolean isSetColor();

    boolean isSetColor2();

    boolean isSetDashstyle();

    boolean isSetEndarrow();

    boolean isSetEndarrowlength();

    boolean isSetEndarrowwidth();

    boolean isSetEndcap();

    boolean isSetExt();

    boolean isSetFilltype();

    boolean isSetForcedash();

    boolean isSetHref();

    boolean isSetImagealignshape();

    boolean isSetImageaspect();

    boolean isSetImagesize();

    boolean isSetInsetpen();

    boolean isSetJoinstyle();

    boolean isSetLinestyle();

    boolean isSetMiterlimit();

    boolean isSetOn();

    boolean isSetOpacity();

    boolean isSetSrc();

    boolean isSetStartarrow();

    boolean isSetStartarrowlength();

    boolean isSetStartarrowwidth();

    boolean isSetTitle();

    boolean isSetWeight();

    void setAlthref(String str);

    void setColor(String str);

    void setColor2(String str);

    void setDashstyle(String str);

    void setEndarrow(STStrokeArrowType.Enum r1);

    void setEndarrowlength(STStrokeArrowLength.Enum r1);

    void setEndarrowwidth(STStrokeArrowWidth.Enum r1);

    void setEndcap(STStrokeEndCap.Enum r1);

    void setExt(STExt.Enum r1);

    void setFilltype(STFillType.Enum r1);

    void setForcedash(STTrueFalse.Enum r1);

    void setHref(String str);

    void setImagealignshape(STTrueFalse.Enum r1);

    void setImageaspect(STImageAspect.Enum r1);

    void setImagesize(String str);

    void setInsetpen(STTrueFalse.Enum r1);

    void setJoinstyle(STStrokeJoinStyle.Enum r1);

    void setLinestyle(STStrokeLineStyle.Enum r1);

    void setMiterlimit(BigDecimal bigDecimal);

    void setOn(STTrueFalse.Enum r1);

    void setOpacity(String str);

    void setSrc(String str);

    void setStartarrow(STStrokeArrowType.Enum r1);

    void setStartarrowlength(STStrokeArrowLength.Enum r1);

    void setStartarrowwidth(STStrokeArrowWidth.Enum r1);

    void setTitle(String str);

    void setWeight(String str);

    void unsetAlthref();

    void unsetColor();

    void unsetColor2();

    void unsetDashstyle();

    void unsetEndarrow();

    void unsetEndarrowlength();

    void unsetEndarrowwidth();

    void unsetEndcap();

    void unsetExt();

    void unsetFilltype();

    void unsetForcedash();

    void unsetHref();

    void unsetImagealignshape();

    void unsetImageaspect();

    void unsetImagesize();

    void unsetInsetpen();

    void unsetJoinstyle();

    void unsetLinestyle();

    void unsetMiterlimit();

    void unsetOn();

    void unsetOpacity();

    void unsetSrc();

    void unsetStartarrow();

    void unsetStartarrowlength();

    void unsetStartarrowwidth();

    void unsetTitle();

    void unsetWeight();

    XmlString xgetAlthref();

    STColorType xgetColor();

    STColorType xgetColor2();

    XmlString xgetDashstyle();

    STStrokeArrowType xgetEndarrow();

    STStrokeArrowLength xgetEndarrowlength();

    STStrokeArrowWidth xgetEndarrowwidth();

    STStrokeEndCap xgetEndcap();

    STExt xgetExt();

    com.microsoft.schemas.vml.STFillType xgetFilltype();

    STTrueFalse xgetForcedash();

    XmlString xgetHref();

    STTrueFalse xgetImagealignshape();

    STImageAspect xgetImageaspect();

    XmlString xgetImagesize();

    STTrueFalse xgetInsetpen();

    STStrokeJoinStyle xgetJoinstyle();

    STStrokeLineStyle xgetLinestyle();

    XmlDecimal xgetMiterlimit();

    STTrueFalse xgetOn();

    XmlString xgetOpacity();

    XmlString xgetSrc();

    STStrokeArrowType xgetStartarrow();

    STStrokeArrowLength xgetStartarrowlength();

    STStrokeArrowWidth xgetStartarrowwidth();

    XmlString xgetTitle();

    XmlString xgetWeight();

    void xsetAlthref(XmlString xmlString);

    void xsetColor(STColorType sTColorType);

    void xsetColor2(STColorType sTColorType);

    void xsetDashstyle(XmlString xmlString);

    void xsetEndarrow(STStrokeArrowType sTStrokeArrowType);

    void xsetEndarrowlength(STStrokeArrowLength sTStrokeArrowLength);

    void xsetEndarrowwidth(STStrokeArrowWidth sTStrokeArrowWidth);

    void xsetEndcap(STStrokeEndCap sTStrokeEndCap);

    void xsetExt(STExt sTExt);

    void xsetFilltype(com.microsoft.schemas.vml.STFillType sTFillType);

    void xsetForcedash(STTrueFalse sTTrueFalse);

    void xsetHref(XmlString xmlString);

    void xsetImagealignshape(STTrueFalse sTTrueFalse);

    void xsetImageaspect(STImageAspect sTImageAspect);

    void xsetImagesize(XmlString xmlString);

    void xsetInsetpen(STTrueFalse sTTrueFalse);

    void xsetJoinstyle(STStrokeJoinStyle sTStrokeJoinStyle);

    void xsetLinestyle(STStrokeLineStyle sTStrokeLineStyle);

    void xsetMiterlimit(XmlDecimal xmlDecimal);

    void xsetOn(STTrueFalse sTTrueFalse);

    void xsetOpacity(XmlString xmlString);

    void xsetSrc(XmlString xmlString);

    void xsetStartarrow(STStrokeArrowType sTStrokeArrowType);

    void xsetStartarrowlength(STStrokeArrowLength sTStrokeArrowLength);

    void xsetStartarrowwidth(STStrokeArrowWidth sTStrokeArrowWidth);

    void xsetTitle(XmlString xmlString);

    void xsetWeight(XmlString xmlString);
}
