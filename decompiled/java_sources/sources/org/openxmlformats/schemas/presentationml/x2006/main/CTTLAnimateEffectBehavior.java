package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateEffectTransition;

/* loaded from: classes14.dex */
public interface CTTLAnimateEffectBehavior extends XmlObject {
    public static final DocumentFactory<CTTLAnimateEffectBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimateEffectBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimateeffectbehavior5083type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonBehaviorData addNewCBhvr();

    CTTLAnimVariant addNewProgress();

    CTTLCommonBehaviorData getCBhvr();

    String getFilter();

    String getPrLst();

    CTTLAnimVariant getProgress();

    STTLAnimateEffectTransition.Enum getTransition();

    boolean isSetFilter();

    boolean isSetPrLst();

    boolean isSetProgress();

    boolean isSetTransition();

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setFilter(String str);

    void setPrLst(String str);

    void setProgress(CTTLAnimVariant cTTLAnimVariant);

    void setTransition(STTLAnimateEffectTransition.Enum r1);

    void unsetFilter();

    void unsetPrLst();

    void unsetProgress();

    void unsetTransition();

    XmlString xgetFilter();

    XmlString xgetPrLst();

    STTLAnimateEffectTransition xgetTransition();

    void xsetFilter(XmlString xmlString);

    void xsetPrLst(XmlString xmlString);

    void xsetTransition(STTLAnimateEffectTransition sTTLAnimateEffectTransition);
}
