package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScale2D;

/* loaded from: classes14.dex */
public interface CTCommonViewProperties extends XmlObject {
    public static final DocumentFactory<CTCommonViewProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCommonViewProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcommonviewproperties9cc2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPoint2D addNewOrigin();

    CTScale2D addNewScale();

    CTPoint2D getOrigin();

    CTScale2D getScale();

    boolean getVarScale();

    boolean isSetVarScale();

    void setOrigin(CTPoint2D cTPoint2D);

    void setScale(CTScale2D cTScale2D);

    void setVarScale(boolean z);

    void unsetVarScale();

    XmlBoolean xgetVarScale();

    void xsetVarScale(XmlBoolean xmlBoolean);
}
