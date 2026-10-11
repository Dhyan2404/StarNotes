package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTMemberProperty extends XmlObject {
    public static final DocumentFactory<CTMemberProperty> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMemberProperty> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmemberpropertyd0d8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getField();

    long getLevel();

    String getName();

    long getNameLen();

    long getPLen();

    long getPPos();

    boolean getShowAsCaption();

    boolean getShowCell();

    boolean getShowTip();

    boolean isSetLevel();

    boolean isSetName();

    boolean isSetNameLen();

    boolean isSetPLen();

    boolean isSetPPos();

    boolean isSetShowAsCaption();

    boolean isSetShowCell();

    boolean isSetShowTip();

    void setField(long j);

    void setLevel(long j);

    void setName(String str);

    void setNameLen(long j);

    void setPLen(long j);

    void setPPos(long j);

    void setShowAsCaption(boolean z);

    void setShowCell(boolean z);

    void setShowTip(boolean z);

    void unsetLevel();

    void unsetName();

    void unsetNameLen();

    void unsetPLen();

    void unsetPPos();

    void unsetShowAsCaption();

    void unsetShowCell();

    void unsetShowTip();

    XmlUnsignedInt xgetField();

    XmlUnsignedInt xgetLevel();

    STXstring xgetName();

    XmlUnsignedInt xgetNameLen();

    XmlUnsignedInt xgetPLen();

    XmlUnsignedInt xgetPPos();

    XmlBoolean xgetShowAsCaption();

    XmlBoolean xgetShowCell();

    XmlBoolean xgetShowTip();

    void xsetField(XmlUnsignedInt xmlUnsignedInt);

    void xsetLevel(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STXstring sTXstring);

    void xsetNameLen(XmlUnsignedInt xmlUnsignedInt);

    void xsetPLen(XmlUnsignedInt xmlUnsignedInt);

    void xsetPPos(XmlUnsignedInt xmlUnsignedInt);

    void xsetShowAsCaption(XmlBoolean xmlBoolean);

    void xsetShowCell(XmlBoolean xmlBoolean);

    void xsetShowTip(XmlBoolean xmlBoolean);
}
