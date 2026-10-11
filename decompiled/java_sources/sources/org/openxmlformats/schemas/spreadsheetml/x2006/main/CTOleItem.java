package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTOleItem extends XmlObject {
    public static final DocumentFactory<CTOleItem> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOleItem> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoleiteme3fatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAdvise();

    boolean getIcon();

    String getName();

    boolean getPreferPic();

    boolean isSetAdvise();

    boolean isSetIcon();

    boolean isSetPreferPic();

    void setAdvise(boolean z);

    void setIcon(boolean z);

    void setName(String str);

    void setPreferPic(boolean z);

    void unsetAdvise();

    void unsetIcon();

    void unsetPreferPic();

    XmlBoolean xgetAdvise();

    XmlBoolean xgetIcon();

    STXstring xgetName();

    XmlBoolean xgetPreferPic();

    void xsetAdvise(XmlBoolean xmlBoolean);

    void xsetIcon(XmlBoolean xmlBoolean);

    void xsetName(STXstring sTXstring);

    void xsetPreferPic(XmlBoolean xmlBoolean);
}
