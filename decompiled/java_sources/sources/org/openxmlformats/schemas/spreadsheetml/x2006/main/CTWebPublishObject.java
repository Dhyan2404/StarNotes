package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTWebPublishObject extends XmlObject {
    public static final DocumentFactory<CTWebPublishObject> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWebPublishObject> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwebpublishobject9f83type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAutoRepublish();

    String getDestinationFile();

    String getDivId();

    long getId();

    String getSourceObject();

    String getTitle();

    boolean isSetAutoRepublish();

    boolean isSetSourceObject();

    boolean isSetTitle();

    void setAutoRepublish(boolean z);

    void setDestinationFile(String str);

    void setDivId(String str);

    void setId(long j);

    void setSourceObject(String str);

    void setTitle(String str);

    void unsetAutoRepublish();

    void unsetSourceObject();

    void unsetTitle();

    XmlBoolean xgetAutoRepublish();

    STXstring xgetDestinationFile();

    STXstring xgetDivId();

    XmlUnsignedInt xgetId();

    STXstring xgetSourceObject();

    STXstring xgetTitle();

    void xsetAutoRepublish(XmlBoolean xmlBoolean);

    void xsetDestinationFile(STXstring sTXstring);

    void xsetDivId(STXstring sTXstring);

    void xsetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSourceObject(STXstring sTXstring);

    void xsetTitle(STXstring sTXstring);
}
