package com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTThreadedComments2Ext extends XmlObject {
    public static final DocumentFactory<CTThreadedComments2Ext> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTThreadedComments2Ext> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctthreadedcomments2ext2d0ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommentHyperlink addNewHyperlink();

    long getChecksum();

    CTCommentHyperlink getHyperlinkArray(int i);

    CTCommentHyperlink[] getHyperlinkArray();

    List<CTCommentHyperlink> getHyperlinkList();

    CTCommentHyperlink insertNewHyperlink(int i);

    void removeHyperlink(int i);

    void setChecksum(long j);

    void setHyperlinkArray(int i, CTCommentHyperlink cTCommentHyperlink);

    void setHyperlinkArray(CTCommentHyperlink[] cTCommentHyperlinkArr);

    int sizeOfHyperlinkArray();

    XmlUnsignedInt xgetChecksum();

    void xsetChecksum(XmlUnsignedInt xmlUnsignedInt);
}
