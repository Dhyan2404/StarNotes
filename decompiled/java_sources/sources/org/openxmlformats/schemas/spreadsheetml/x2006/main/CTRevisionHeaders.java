package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes15.dex */
public interface CTRevisionHeaders extends XmlObject {
    public static final DocumentFactory<CTRevisionHeaders> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionHeaders> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionheadersdecatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRevisionHeader addNewHeader();

    boolean getDiskRevisions();

    boolean getExclusive();

    String getGuid();

    CTRevisionHeader getHeaderArray(int i);

    CTRevisionHeader[] getHeaderArray();

    List<CTRevisionHeader> getHeaderList();

    boolean getHistory();

    boolean getKeepChangeHistory();

    String getLastGuid();

    long getPreserveHistory();

    boolean getProtected();

    long getRevisionId();

    boolean getShared();

    boolean getTrackRevisions();

    int getVersion();

    CTRevisionHeader insertNewHeader(int i);

    boolean isSetDiskRevisions();

    boolean isSetExclusive();

    boolean isSetHistory();

    boolean isSetKeepChangeHistory();

    boolean isSetLastGuid();

    boolean isSetPreserveHistory();

    boolean isSetProtected();

    boolean isSetRevisionId();

    boolean isSetShared();

    boolean isSetTrackRevisions();

    boolean isSetVersion();

    void removeHeader(int i);

    void setDiskRevisions(boolean z);

    void setExclusive(boolean z);

    void setGuid(String str);

    void setHeaderArray(int i, CTRevisionHeader cTRevisionHeader);

    void setHeaderArray(CTRevisionHeader[] cTRevisionHeaderArr);

    void setHistory(boolean z);

    void setKeepChangeHistory(boolean z);

    void setLastGuid(String str);

    void setPreserveHistory(long j);

    void setProtected(boolean z);

    void setRevisionId(long j);

    void setShared(boolean z);

    void setTrackRevisions(boolean z);

    void setVersion(int i);

    int sizeOfHeaderArray();

    void unsetDiskRevisions();

    void unsetExclusive();

    void unsetHistory();

    void unsetKeepChangeHistory();

    void unsetLastGuid();

    void unsetPreserveHistory();

    void unsetProtected();

    void unsetRevisionId();

    void unsetShared();

    void unsetTrackRevisions();

    void unsetVersion();

    XmlBoolean xgetDiskRevisions();

    XmlBoolean xgetExclusive();

    STGuid xgetGuid();

    XmlBoolean xgetHistory();

    XmlBoolean xgetKeepChangeHistory();

    STGuid xgetLastGuid();

    XmlUnsignedInt xgetPreserveHistory();

    XmlBoolean xgetProtected();

    XmlUnsignedInt xgetRevisionId();

    XmlBoolean xgetShared();

    XmlBoolean xgetTrackRevisions();

    XmlInt xgetVersion();

    void xsetDiskRevisions(XmlBoolean xmlBoolean);

    void xsetExclusive(XmlBoolean xmlBoolean);

    void xsetGuid(STGuid sTGuid);

    void xsetHistory(XmlBoolean xmlBoolean);

    void xsetKeepChangeHistory(XmlBoolean xmlBoolean);

    void xsetLastGuid(STGuid sTGuid);

    void xsetPreserveHistory(XmlUnsignedInt xmlUnsignedInt);

    void xsetProtected(XmlBoolean xmlBoolean);

    void xsetRevisionId(XmlUnsignedInt xmlUnsignedInt);

    void xsetShared(XmlBoolean xmlBoolean);

    void xsetTrackRevisions(XmlBoolean xmlBoolean);

    void xsetVersion(XmlInt xmlInt);
}
