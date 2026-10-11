package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STIconSetType;

/* loaded from: classes15.dex */
public interface CTIconFilter extends XmlObject {
    public static final DocumentFactory<CTIconFilter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTIconFilter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cticonfilterb79atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getIconId();

    STIconSetType.Enum getIconSet();

    boolean isSetIconId();

    void setIconId(long j);

    void setIconSet(STIconSetType.Enum r1);

    void unsetIconId();

    XmlUnsignedInt xgetIconId();

    STIconSetType xgetIconSet();

    void xsetIconId(XmlUnsignedInt xmlUnsignedInt);

    void xsetIconSet(STIconSetType sTIconSetType);
}
