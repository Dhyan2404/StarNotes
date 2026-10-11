package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SnapAnglesType extends XmlObject {
    public static final DocumentFactory<SnapAnglesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SnapAnglesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "snapanglestype8f0ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SnapAngleType addNewSnapAngle();

    SnapAngleType getSnapAngleArray(int i);

    SnapAngleType[] getSnapAngleArray();

    List<SnapAngleType> getSnapAngleList();

    SnapAngleType insertNewSnapAngle(int i);

    void removeSnapAngle(int i);

    void setSnapAngleArray(int i, SnapAngleType snapAngleType);

    void setSnapAngleArray(SnapAngleType[] snapAngleTypeArr);

    int sizeOfSnapAngleArray();
}
