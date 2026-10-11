package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPictureOptions extends XmlObject {
    public static final DocumentFactory<CTPictureOptions> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPictureOptions> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpictureoptions493ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBoolean addNewApplyToEnd();

    CTBoolean addNewApplyToFront();

    CTBoolean addNewApplyToSides();

    CTPictureFormat addNewPictureFormat();

    CTPictureStackUnit addNewPictureStackUnit();

    CTBoolean getApplyToEnd();

    CTBoolean getApplyToFront();

    CTBoolean getApplyToSides();

    CTPictureFormat getPictureFormat();

    CTPictureStackUnit getPictureStackUnit();

    boolean isSetApplyToEnd();

    boolean isSetApplyToFront();

    boolean isSetApplyToSides();

    boolean isSetPictureFormat();

    boolean isSetPictureStackUnit();

    void setApplyToEnd(CTBoolean cTBoolean);

    void setApplyToFront(CTBoolean cTBoolean);

    void setApplyToSides(CTBoolean cTBoolean);

    void setPictureFormat(CTPictureFormat cTPictureFormat);

    void setPictureStackUnit(CTPictureStackUnit cTPictureStackUnit);

    void unsetApplyToEnd();

    void unsetApplyToFront();

    void unsetApplyToSides();

    void unsetPictureFormat();

    void unsetPictureStackUnit();
}
