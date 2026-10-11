package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLSetBehavior extends XmlObject {
    public static final DocumentFactory<CTTLSetBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLSetBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlsetbehaviord633type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonBehaviorData addNewCBhvr();

    CTTLAnimVariant addNewTo();

    CTTLCommonBehaviorData getCBhvr();

    CTTLAnimVariant getTo();

    boolean isSetTo();

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setTo(CTTLAnimVariant cTTLAnimVariant);

    void unsetTo();
}
