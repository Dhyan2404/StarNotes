package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CTDiagram extends XmlObject {
    public static final DocumentFactory<CTDiagram> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDiagram> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdiagramc1cctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelationTable addNewRelationtable();

    STTrueFalse.Enum getAutoformat();

    STTrueFalse.Enum getAutolayout();

    String getConstrainbounds();

    BigInteger getDgmbasetextscale();

    BigInteger getDgmfontsize();

    BigInteger getDgmscalex();

    BigInteger getDgmscaley();

    BigInteger getDgmstyle();

    STExt.Enum getExt();

    CTRelationTable getRelationtable();

    STTrueFalse.Enum getReverse();

    boolean isSetAutoformat();

    boolean isSetAutolayout();

    boolean isSetConstrainbounds();

    boolean isSetDgmbasetextscale();

    boolean isSetDgmfontsize();

    boolean isSetDgmscalex();

    boolean isSetDgmscaley();

    boolean isSetDgmstyle();

    boolean isSetExt();

    boolean isSetRelationtable();

    boolean isSetReverse();

    void setAutoformat(STTrueFalse.Enum r1);

    void setAutolayout(STTrueFalse.Enum r1);

    void setConstrainbounds(String str);

    void setDgmbasetextscale(BigInteger bigInteger);

    void setDgmfontsize(BigInteger bigInteger);

    void setDgmscalex(BigInteger bigInteger);

    void setDgmscaley(BigInteger bigInteger);

    void setDgmstyle(BigInteger bigInteger);

    void setExt(STExt.Enum r1);

    void setRelationtable(CTRelationTable cTRelationTable);

    void setReverse(STTrueFalse.Enum r1);

    void unsetAutoformat();

    void unsetAutolayout();

    void unsetConstrainbounds();

    void unsetDgmbasetextscale();

    void unsetDgmfontsize();

    void unsetDgmscalex();

    void unsetDgmscaley();

    void unsetDgmstyle();

    void unsetExt();

    void unsetRelationtable();

    void unsetReverse();

    STTrueFalse xgetAutoformat();

    STTrueFalse xgetAutolayout();

    XmlString xgetConstrainbounds();

    XmlInteger xgetDgmbasetextscale();

    XmlInteger xgetDgmfontsize();

    XmlInteger xgetDgmscalex();

    XmlInteger xgetDgmscaley();

    XmlInteger xgetDgmstyle();

    STExt xgetExt();

    STTrueFalse xgetReverse();

    void xsetAutoformat(STTrueFalse sTTrueFalse);

    void xsetAutolayout(STTrueFalse sTTrueFalse);

    void xsetConstrainbounds(XmlString xmlString);

    void xsetDgmbasetextscale(XmlInteger xmlInteger);

    void xsetDgmfontsize(XmlInteger xmlInteger);

    void xsetDgmscalex(XmlInteger xmlInteger);

    void xsetDgmscaley(XmlInteger xmlInteger);

    void xsetDgmstyle(XmlInteger xmlInteger);

    void xsetExt(STExt sTExt);

    void xsetReverse(STTrueFalse sTTrueFalse);
}
