package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.STExt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CTSkew extends XmlObject {
    public static final DocumentFactory<CTSkew> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSkew> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctskew006dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STExt.Enum getExt();

    String getId();

    String getMatrix();

    String getOffset();

    STTrueFalse.Enum getOn();

    String getOrigin();

    boolean isSetExt();

    boolean isSetId();

    boolean isSetMatrix();

    boolean isSetOffset();

    boolean isSetOn();

    boolean isSetOrigin();

    void setExt(STExt.Enum r1);

    void setId(String str);

    void setMatrix(String str);

    void setOffset(String str);

    void setOn(STTrueFalse.Enum r1);

    void setOrigin(String str);

    void unsetExt();

    void unsetId();

    void unsetMatrix();

    void unsetOffset();

    void unsetOn();

    void unsetOrigin();

    STExt xgetExt();

    XmlString xgetId();

    XmlString xgetMatrix();

    XmlString xgetOffset();

    STTrueFalse xgetOn();

    XmlString xgetOrigin();

    void xsetExt(STExt sTExt);

    void xsetId(XmlString xmlString);

    void xsetMatrix(XmlString xmlString);

    void xsetOffset(XmlString xmlString);

    void xsetOn(STTrueFalse sTTrueFalse);

    void xsetOrigin(XmlString xmlString);
}
