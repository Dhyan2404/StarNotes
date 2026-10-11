package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STWebSourceType;

/* loaded from: classes15.dex */
public interface CTWebPublishItem extends XmlObject {
    public static final DocumentFactory<CTWebPublishItem> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWebPublishItem> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwebpublishitemce57type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAutoRepublish();

    String getDestinationFile();

    String getDivId();

    long getId();

    String getSourceObject();

    String getSourceRef();

    STWebSourceType.Enum getSourceType();

    String getTitle();

    boolean isSetAutoRepublish();

    boolean isSetSourceObject();

    boolean isSetSourceRef();

    boolean isSetTitle();

    void setAutoRepublish(boolean z);

    void setDestinationFile(String str);

    void setDivId(String str);

    void setId(long j);

    void setSourceObject(String str);

    void setSourceRef(String str);

    void setSourceType(STWebSourceType.Enum r1);

    void setTitle(String str);

    void unsetAutoRepublish();

    void unsetSourceObject();

    void unsetSourceRef();

    void unsetTitle();

    XmlBoolean xgetAutoRepublish();

    STXstring xgetDestinationFile();

    STXstring xgetDivId();

    XmlUnsignedInt xgetId();

    STXstring xgetSourceObject();

    STRef xgetSourceRef();

    STWebSourceType xgetSourceType();

    STXstring xgetTitle();

    void xsetAutoRepublish(XmlBoolean xmlBoolean);

    void xsetDestinationFile(STXstring sTXstring);

    void xsetDivId(STXstring sTXstring);

    void xsetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSourceObject(STXstring sTXstring);

    void xsetSourceRef(STRef sTRef);

    void xsetSourceType(STWebSourceType sTWebSourceType);

    void xsetTitle(STXstring sTXstring);
}
