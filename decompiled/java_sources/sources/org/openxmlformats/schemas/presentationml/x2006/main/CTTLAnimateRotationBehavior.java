package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STAngle;

/* loaded from: classes14.dex */
public interface CTTLAnimateRotationBehavior extends XmlObject {
    public static final DocumentFactory<CTTLAnimateRotationBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimateRotationBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimaterotationbehavior5076type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonBehaviorData addNewCBhvr();

    int getBy();

    CTTLCommonBehaviorData getCBhvr();

    int getFrom();

    int getTo();

    boolean isSetBy();

    boolean isSetFrom();

    boolean isSetTo();

    void setBy(int i);

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setFrom(int i);

    void setTo(int i);

    void unsetBy();

    void unsetFrom();

    void unsetTo();

    STAngle xgetBy();

    STAngle xgetFrom();

    STAngle xgetTo();

    void xsetBy(STAngle sTAngle);

    void xsetFrom(STAngle sTAngle);

    void xsetTo(STAngle sTAngle);
}
