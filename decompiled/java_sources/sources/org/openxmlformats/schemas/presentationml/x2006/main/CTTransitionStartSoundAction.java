package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEmbeddedWAVAudioFile;

/* loaded from: classes14.dex */
public interface CTTransitionStartSoundAction extends XmlObject {
    public static final DocumentFactory<CTTransitionStartSoundAction> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTransitionStartSoundAction> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttransitionstartsoundaction3e0dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEmbeddedWAVAudioFile addNewSnd();

    boolean getLoop();

    CTEmbeddedWAVAudioFile getSnd();

    boolean isSetLoop();

    void setLoop(boolean z);

    void setSnd(CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile);

    void unsetLoop();

    XmlBoolean xgetLoop();

    void xsetLoop(XmlBoolean xmlBoolean);
}
