package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAudioCDTime extends XmlObject {
    public static final DocumentFactory<CTAudioCDTime> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAudioCDTime> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctaudiocdtime68d5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getTime();

    short getTrack();

    boolean isSetTime();

    void setTime(long j);

    void setTrack(short s);

    void unsetTime();

    XmlUnsignedInt xgetTime();

    XmlUnsignedByte xgetTrack();

    void xsetTime(XmlUnsignedInt xmlUnsignedInt);

    void xsetTrack(XmlUnsignedByte xmlUnsignedByte);
}
