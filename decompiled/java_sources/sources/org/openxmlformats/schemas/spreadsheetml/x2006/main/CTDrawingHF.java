package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes15.dex */
public interface CTDrawingHF extends XmlObject {
    public static final DocumentFactory<CTDrawingHF> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDrawingHF> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdrawinghfd23btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getCfe();

    long getCff();

    long getCfo();

    long getChe();

    long getChf();

    long getCho();

    String getId();

    long getLfe();

    long getLff();

    long getLfo();

    long getLhe();

    long getLhf();

    long getLho();

    long getRfe();

    long getRff();

    long getRfo();

    long getRhe();

    long getRhf();

    long getRho();

    boolean isSetCfe();

    boolean isSetCff();

    boolean isSetCfo();

    boolean isSetChe();

    boolean isSetChf();

    boolean isSetCho();

    boolean isSetLfe();

    boolean isSetLff();

    boolean isSetLfo();

    boolean isSetLhe();

    boolean isSetLhf();

    boolean isSetLho();

    boolean isSetRfe();

    boolean isSetRff();

    boolean isSetRfo();

    boolean isSetRhe();

    boolean isSetRhf();

    boolean isSetRho();

    void setCfe(long j);

    void setCff(long j);

    void setCfo(long j);

    void setChe(long j);

    void setChf(long j);

    void setCho(long j);

    void setId(String str);

    void setLfe(long j);

    void setLff(long j);

    void setLfo(long j);

    void setLhe(long j);

    void setLhf(long j);

    void setLho(long j);

    void setRfe(long j);

    void setRff(long j);

    void setRfo(long j);

    void setRhe(long j);

    void setRhf(long j);

    void setRho(long j);

    void unsetCfe();

    void unsetCff();

    void unsetCfo();

    void unsetChe();

    void unsetChf();

    void unsetCho();

    void unsetLfe();

    void unsetLff();

    void unsetLfo();

    void unsetLhe();

    void unsetLhf();

    void unsetLho();

    void unsetRfe();

    void unsetRff();

    void unsetRfo();

    void unsetRhe();

    void unsetRhf();

    void unsetRho();

    XmlUnsignedInt xgetCfe();

    XmlUnsignedInt xgetCff();

    XmlUnsignedInt xgetCfo();

    XmlUnsignedInt xgetChe();

    XmlUnsignedInt xgetChf();

    XmlUnsignedInt xgetCho();

    STRelationshipId xgetId();

    XmlUnsignedInt xgetLfe();

    XmlUnsignedInt xgetLff();

    XmlUnsignedInt xgetLfo();

    XmlUnsignedInt xgetLhe();

    XmlUnsignedInt xgetLhf();

    XmlUnsignedInt xgetLho();

    XmlUnsignedInt xgetRfe();

    XmlUnsignedInt xgetRff();

    XmlUnsignedInt xgetRfo();

    XmlUnsignedInt xgetRhe();

    XmlUnsignedInt xgetRhf();

    XmlUnsignedInt xgetRho();

    void xsetCfe(XmlUnsignedInt xmlUnsignedInt);

    void xsetCff(XmlUnsignedInt xmlUnsignedInt);

    void xsetCfo(XmlUnsignedInt xmlUnsignedInt);

    void xsetChe(XmlUnsignedInt xmlUnsignedInt);

    void xsetChf(XmlUnsignedInt xmlUnsignedInt);

    void xsetCho(XmlUnsignedInt xmlUnsignedInt);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetLfe(XmlUnsignedInt xmlUnsignedInt);

    void xsetLff(XmlUnsignedInt xmlUnsignedInt);

    void xsetLfo(XmlUnsignedInt xmlUnsignedInt);

    void xsetLhe(XmlUnsignedInt xmlUnsignedInt);

    void xsetLhf(XmlUnsignedInt xmlUnsignedInt);

    void xsetLho(XmlUnsignedInt xmlUnsignedInt);

    void xsetRfe(XmlUnsignedInt xmlUnsignedInt);

    void xsetRff(XmlUnsignedInt xmlUnsignedInt);

    void xsetRfo(XmlUnsignedInt xmlUnsignedInt);

    void xsetRhe(XmlUnsignedInt xmlUnsignedInt);

    void xsetRhf(XmlUnsignedInt xmlUnsignedInt);

    void xsetRho(XmlUnsignedInt xmlUnsignedInt);
}
