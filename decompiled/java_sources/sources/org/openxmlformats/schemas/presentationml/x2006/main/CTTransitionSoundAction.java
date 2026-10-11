package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTransitionSoundAction extends XmlObject {
    public static final DocumentFactory<CTTransitionSoundAction> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTransitionSoundAction> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttransitionsoundactionc47ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEmpty addNewEndSnd();

    CTTransitionStartSoundAction addNewStSnd();

    CTEmpty getEndSnd();

    CTTransitionStartSoundAction getStSnd();

    boolean isSetEndSnd();

    boolean isSetStSnd();

    void setEndSnd(CTEmpty cTEmpty);

    void setStSnd(CTTransitionStartSoundAction cTTransitionStartSoundAction);

    void unsetEndSnd();

    void unsetStSnd();
}
