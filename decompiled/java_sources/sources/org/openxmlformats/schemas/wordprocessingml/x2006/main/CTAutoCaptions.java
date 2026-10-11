package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTAutoCaptions extends XmlObject {
    public static final DocumentFactory<CTAutoCaptions> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAutoCaptions> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctautocaptions89cctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAutoCaption addNewAutoCaption();

    CTAutoCaption getAutoCaptionArray(int i);

    CTAutoCaption[] getAutoCaptionArray();

    List<CTAutoCaption> getAutoCaptionList();

    CTAutoCaption insertNewAutoCaption(int i);

    void removeAutoCaption(int i);

    void setAutoCaptionArray(int i, CTAutoCaption cTAutoCaption);

    void setAutoCaptionArray(CTAutoCaption[] cTAutoCaptionArr);

    int sizeOfAutoCaptionArray();
}
