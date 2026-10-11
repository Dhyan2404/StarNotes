package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes7.dex */
public interface CTMention extends XmlObject {
    public static final DocumentFactory<CTMention> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMention> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmention0451type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getLength();

    String getMentionId();

    String getMentionpersonId();

    long getStartIndex();

    void setLength(long j);

    void setMentionId(String str);

    void setMentionpersonId(String str);

    void setStartIndex(long j);

    XmlUnsignedInt xgetLength();

    STGuid xgetMentionId();

    STGuid xgetMentionpersonId();

    XmlUnsignedInt xgetStartIndex();

    void xsetLength(XmlUnsignedInt xmlUnsignedInt);

    void xsetMentionId(STGuid sTGuid);

    void xsetMentionpersonId(STGuid sTGuid);

    void xsetStartIndex(XmlUnsignedInt xmlUnsignedInt);
}
