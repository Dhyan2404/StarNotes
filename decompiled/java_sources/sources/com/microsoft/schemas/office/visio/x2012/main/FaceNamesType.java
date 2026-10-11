package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FaceNamesType extends XmlObject {
    public static final DocumentFactory<FaceNamesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FaceNamesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "facenamestypeb920type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    FaceNameType addNewFaceName();

    FaceNameType getFaceNameArray(int i);

    FaceNameType[] getFaceNameArray();

    List<FaceNameType> getFaceNameList();

    FaceNameType insertNewFaceName(int i);

    void removeFaceName(int i);

    void setFaceNameArray(int i, FaceNameType faceNameType);

    void setFaceNameArray(FaceNameType[] faceNameTypeArr);

    int sizeOfFaceNameArray();
}
