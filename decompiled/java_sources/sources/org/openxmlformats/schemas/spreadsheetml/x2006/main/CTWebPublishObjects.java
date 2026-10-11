package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTWebPublishObjects extends XmlObject {
    public static final DocumentFactory<CTWebPublishObjects> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWebPublishObjects> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwebpublishobjects30d8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWebPublishObject addNewWebPublishObject();

    long getCount();

    CTWebPublishObject getWebPublishObjectArray(int i);

    CTWebPublishObject[] getWebPublishObjectArray();

    List<CTWebPublishObject> getWebPublishObjectList();

    CTWebPublishObject insertNewWebPublishObject(int i);

    boolean isSetCount();

    void removeWebPublishObject(int i);

    void setCount(long j);

    void setWebPublishObjectArray(int i, CTWebPublishObject cTWebPublishObject);

    void setWebPublishObjectArray(CTWebPublishObject[] cTWebPublishObjectArr);

    int sizeOfWebPublishObjectArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
