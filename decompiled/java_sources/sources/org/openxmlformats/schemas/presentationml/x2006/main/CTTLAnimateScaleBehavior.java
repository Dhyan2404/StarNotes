package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLAnimateScaleBehavior extends XmlObject {
    public static final DocumentFactory<CTTLAnimateScaleBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimateScaleBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimatescalebehavior91b2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLPoint addNewBy();

    CTTLCommonBehaviorData addNewCBhvr();

    CTTLPoint addNewFrom();

    CTTLPoint addNewTo();

    CTTLPoint getBy();

    CTTLCommonBehaviorData getCBhvr();

    CTTLPoint getFrom();

    CTTLPoint getTo();

    boolean getZoomContents();

    boolean isSetBy();

    boolean isSetFrom();

    boolean isSetTo();

    boolean isSetZoomContents();

    void setBy(CTTLPoint cTTLPoint);

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setFrom(CTTLPoint cTTLPoint);

    void setTo(CTTLPoint cTTLPoint);

    void setZoomContents(boolean z);

    void unsetBy();

    void unsetFrom();

    void unsetTo();

    void unsetZoomContents();

    XmlBoolean xgetZoomContents();

    void xsetZoomContents(XmlBoolean xmlBoolean);
}
