package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTFieldGroup extends XmlObject {
    public static final DocumentFactory<CTFieldGroup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFieldGroup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfieldgroupe2eetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDiscretePr addNewDiscretePr();

    CTGroupItems addNewGroupItems();

    CTRangePr addNewRangePr();

    long getBase();

    CTDiscretePr getDiscretePr();

    CTGroupItems getGroupItems();

    long getPar();

    CTRangePr getRangePr();

    boolean isSetBase();

    boolean isSetDiscretePr();

    boolean isSetGroupItems();

    boolean isSetPar();

    boolean isSetRangePr();

    void setBase(long j);

    void setDiscretePr(CTDiscretePr cTDiscretePr);

    void setGroupItems(CTGroupItems cTGroupItems);

    void setPar(long j);

    void setRangePr(CTRangePr cTRangePr);

    void unsetBase();

    void unsetDiscretePr();

    void unsetGroupItems();

    void unsetPar();

    void unsetRangePr();

    XmlUnsignedInt xgetBase();

    XmlUnsignedInt xgetPar();

    void xsetBase(XmlUnsignedInt xmlUnsignedInt);

    void xsetPar(XmlUnsignedInt xmlUnsignedInt);
}
