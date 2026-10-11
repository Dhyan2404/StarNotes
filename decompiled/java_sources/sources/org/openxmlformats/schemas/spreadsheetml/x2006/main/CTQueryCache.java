package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTQueryCache extends XmlObject {
    public static final DocumentFactory<CTQueryCache> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTQueryCache> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctquerycache88a3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTQuery addNewQuery();

    long getCount();

    CTQuery getQueryArray(int i);

    CTQuery[] getQueryArray();

    List<CTQuery> getQueryList();

    CTQuery insertNewQuery(int i);

    boolean isSetCount();

    void removeQuery(int i);

    void setCount(long j);

    void setQueryArray(int i, CTQuery cTQuery);

    void setQueryArray(CTQuery[] cTQueryArr);

    int sizeOfQueryArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
