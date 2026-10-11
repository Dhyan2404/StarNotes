package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STAngle;
import com.microsoft.schemas.vml.STExt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CTCallout extends XmlObject {
    public static final DocumentFactory<CTCallout> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCallout> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcallouta029type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getAccentbar();

    STAngle.Enum getAngle();

    String getDistance();

    String getDrop();

    STTrueFalse.Enum getDropauto();

    STExt.Enum getExt();

    String getGap();

    String getLength();

    STTrueFalse.Enum getLengthspecified();

    STTrueFalse.Enum getMinusx();

    STTrueFalse.Enum getMinusy();

    STTrueFalse.Enum getOn();

    STTrueFalse.Enum getTextborder();

    String getType();

    boolean isSetAccentbar();

    boolean isSetAngle();

    boolean isSetDistance();

    boolean isSetDrop();

    boolean isSetDropauto();

    boolean isSetExt();

    boolean isSetGap();

    boolean isSetLength();

    boolean isSetLengthspecified();

    boolean isSetMinusx();

    boolean isSetMinusy();

    boolean isSetOn();

    boolean isSetTextborder();

    boolean isSetType();

    void setAccentbar(STTrueFalse.Enum r1);

    void setAngle(STAngle.Enum r1);

    void setDistance(String str);

    void setDrop(String str);

    void setDropauto(STTrueFalse.Enum r1);

    void setExt(STExt.Enum r1);

    void setGap(String str);

    void setLength(String str);

    void setLengthspecified(STTrueFalse.Enum r1);

    void setMinusx(STTrueFalse.Enum r1);

    void setMinusy(STTrueFalse.Enum r1);

    void setOn(STTrueFalse.Enum r1);

    void setTextborder(STTrueFalse.Enum r1);

    void setType(String str);

    void unsetAccentbar();

    void unsetAngle();

    void unsetDistance();

    void unsetDrop();

    void unsetDropauto();

    void unsetExt();

    void unsetGap();

    void unsetLength();

    void unsetLengthspecified();

    void unsetMinusx();

    void unsetMinusy();

    void unsetOn();

    void unsetTextborder();

    void unsetType();

    STTrueFalse xgetAccentbar();

    STAngle xgetAngle();

    XmlString xgetDistance();

    STCalloutDrop xgetDrop();

    STTrueFalse xgetDropauto();

    STExt xgetExt();

    XmlString xgetGap();

    XmlString xgetLength();

    STTrueFalse xgetLengthspecified();

    STTrueFalse xgetMinusx();

    STTrueFalse xgetMinusy();

    STTrueFalse xgetOn();

    STTrueFalse xgetTextborder();

    XmlString xgetType();

    void xsetAccentbar(STTrueFalse sTTrueFalse);

    void xsetAngle(STAngle sTAngle);

    void xsetDistance(XmlString xmlString);

    void xsetDrop(STCalloutDrop sTCalloutDrop);

    void xsetDropauto(STTrueFalse sTTrueFalse);

    void xsetExt(STExt sTExt);

    void xsetGap(XmlString xmlString);

    void xsetLength(XmlString xmlString);

    void xsetLengthspecified(STTrueFalse sTTrueFalse);

    void xsetMinusx(STTrueFalse sTTrueFalse);

    void xsetMinusy(STTrueFalse sTTrueFalse);

    void xsetOn(STTrueFalse sTTrueFalse);

    void xsetTextborder(STTrueFalse sTTrueFalse);

    void xsetType(XmlString xmlString);
}
