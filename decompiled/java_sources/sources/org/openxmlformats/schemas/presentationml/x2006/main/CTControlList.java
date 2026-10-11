package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTControlList extends XmlObject {
    public static final DocumentFactory<CTControlList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTControlList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcontrollist97d4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTControl addNewControl();

    CTControl getControlArray(int i);

    CTControl[] getControlArray();

    List<CTControl> getControlList();

    CTControl insertNewControl(int i);

    void removeControl(int i);

    void setControlArray(int i, CTControl cTControl);

    void setControlArray(CTControl[] cTControlArr);

    int sizeOfControlArray();
}
