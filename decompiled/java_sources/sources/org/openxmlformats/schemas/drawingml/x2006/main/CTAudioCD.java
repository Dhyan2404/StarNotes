package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAudioCD extends XmlObject {
    public static final DocumentFactory<CTAudioCD> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAudioCD> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctaudiocdbea8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAudioCDTime addNewEnd();

    CTOfficeArtExtensionList addNewExtLst();

    CTAudioCDTime addNewSt();

    CTAudioCDTime getEnd();

    CTOfficeArtExtensionList getExtLst();

    CTAudioCDTime getSt();

    boolean isSetExtLst();

    void setEnd(CTAudioCDTime cTAudioCDTime);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setSt(CTAudioCDTime cTAudioCDTime);

    void unsetExtLst();
}
