package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFlatText;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShape3D;

/* loaded from: classes14.dex */
public interface CTTextProps extends XmlObject {
    public static final DocumentFactory<CTTextProps> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextProps> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextprops2c38type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFlatText addNewFlatTx();

    CTShape3D addNewSp3D();

    CTFlatText getFlatTx();

    CTShape3D getSp3D();

    boolean isSetFlatTx();

    boolean isSetSp3D();

    void setFlatTx(CTFlatText cTFlatText);

    void setSp3D(CTShape3D cTShape3D);

    void unsetFlatTx();

    void unsetSp3D();
}
