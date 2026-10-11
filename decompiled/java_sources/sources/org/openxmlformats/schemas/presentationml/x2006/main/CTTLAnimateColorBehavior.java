package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateColorDirection;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateColorSpace;

/* loaded from: classes14.dex */
public interface CTTLAnimateColorBehavior extends XmlObject {
    public static final DocumentFactory<CTTLAnimateColorBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimateColorBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimatecolorbehavior50f9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLByAnimateColorTransform addNewBy();

    CTTLCommonBehaviorData addNewCBhvr();

    CTColor addNewFrom();

    CTColor addNewTo();

    CTTLByAnimateColorTransform getBy();

    CTTLCommonBehaviorData getCBhvr();

    STTLAnimateColorSpace.Enum getClrSpc();

    STTLAnimateColorDirection.Enum getDir();

    CTColor getFrom();

    CTColor getTo();

    boolean isSetBy();

    boolean isSetClrSpc();

    boolean isSetDir();

    boolean isSetFrom();

    boolean isSetTo();

    void setBy(CTTLByAnimateColorTransform cTTLByAnimateColorTransform);

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setClrSpc(STTLAnimateColorSpace.Enum r1);

    void setDir(STTLAnimateColorDirection.Enum r1);

    void setFrom(CTColor cTColor);

    void setTo(CTColor cTColor);

    void unsetBy();

    void unsetClrSpc();

    void unsetDir();

    void unsetFrom();

    void unsetTo();

    STTLAnimateColorSpace xgetClrSpc();

    STTLAnimateColorDirection xgetDir();

    void xsetClrSpc(STTLAnimateColorSpace sTTLAnimateColorSpace);

    void xsetDir(STTLAnimateColorDirection sTTLAnimateColorDirection);
}
