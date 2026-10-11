package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CurveDocument extends XmlObject {
    public static final DocumentFactory<CurveDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CurveDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "curvea3afdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCurve addNewCurve();

    CTCurve getCurve();

    void setCurve(CTCurve cTCurve);
}
