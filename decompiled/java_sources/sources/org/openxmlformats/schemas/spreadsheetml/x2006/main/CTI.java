package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STItemType;

/* loaded from: classes15.dex */
public interface CTI extends XmlObject {
    public static final DocumentFactory<CTI> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTI> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cti85c8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTX addNewX();

    long getI();

    long getR();

    STItemType.Enum getT();

    CTX getXArray(int i);

    CTX[] getXArray();

    List<CTX> getXList();

    CTX insertNewX(int i);

    boolean isSetI();

    boolean isSetR();

    boolean isSetT();

    void removeX(int i);

    void setI(long j);

    void setR(long j);

    void setT(STItemType.Enum r1);

    void setXArray(int i, CTX ctx);

    void setXArray(CTX[] ctxArr);

    int sizeOfXArray();

    void unsetI();

    void unsetR();

    void unsetT();

    XmlUnsignedInt xgetI();

    XmlUnsignedInt xgetR();

    STItemType xgetT();

    void xsetI(XmlUnsignedInt xmlUnsignedInt);

    void xsetR(XmlUnsignedInt xmlUnsignedInt);

    void xsetT(STItemType sTItemType);
}
