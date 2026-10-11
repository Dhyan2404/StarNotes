package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface VideoFileDocument extends XmlObject {
    public static final DocumentFactory<VideoFileDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<VideoFileDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "videofile1df4doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTVideoFile addNewVideoFile();

    CTVideoFile getVideoFile();

    void setVideoFile(CTVideoFile cTVideoFile);
}
