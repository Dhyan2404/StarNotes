package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLMediaNodeAudio extends XmlObject {
    public static final DocumentFactory<CTTLMediaNodeAudio> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLMediaNodeAudio> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlmedianodeaudio47bdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonMediaNodeData addNewCMediaNode();

    CTTLCommonMediaNodeData getCMediaNode();

    boolean getIsNarration();

    boolean isSetIsNarration();

    void setCMediaNode(CTTLCommonMediaNodeData cTTLCommonMediaNodeData);

    void setIsNarration(boolean z);

    void unsetIsNarration();

    XmlBoolean xgetIsNarration();

    void xsetIsNarration(XmlBoolean xmlBoolean);
}
