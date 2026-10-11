package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTWebPublishItems extends XmlObject {
    public static final DocumentFactory<CTWebPublishItems> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWebPublishItems> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwebpublishitemsdc84type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWebPublishItem addNewWebPublishItem();

    long getCount();

    CTWebPublishItem getWebPublishItemArray(int i);

    CTWebPublishItem[] getWebPublishItemArray();

    List<CTWebPublishItem> getWebPublishItemList();

    CTWebPublishItem insertNewWebPublishItem(int i);

    boolean isSetCount();

    void removeWebPublishItem(int i);

    void setCount(long j);

    void setWebPublishItemArray(int i, CTWebPublishItem cTWebPublishItem);

    void setWebPublishItemArray(CTWebPublishItem[] cTWebPublishItemArr);

    int sizeOfWebPublishItemArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
