package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTCaptions extends XmlObject {
    public static final DocumentFactory<CTCaptions> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCaptions> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcaptions9fbbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAutoCaptions addNewAutoCaptions();

    CTCaption addNewCaption();

    CTAutoCaptions getAutoCaptions();

    CTCaption getCaptionArray(int i);

    CTCaption[] getCaptionArray();

    List<CTCaption> getCaptionList();

    CTCaption insertNewCaption(int i);

    boolean isSetAutoCaptions();

    void removeCaption(int i);

    void setAutoCaptions(CTAutoCaptions cTAutoCaptions);

    void setCaptionArray(int i, CTCaption cTCaption);

    void setCaptionArray(CTCaption[] cTCaptionArr);

    int sizeOfCaptionArray();

    void unsetAutoCaptions();
}
