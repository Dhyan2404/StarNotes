package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STPositiveUniversalMeasure;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STOrientation;

/* loaded from: classes15.dex */
public interface CTCsPageSetup extends XmlObject {
    public static final DocumentFactory<CTCsPageSetup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCsPageSetup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcspagesetupf5fdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getBlackAndWhite();

    long getCopies();

    boolean getDraft();

    long getFirstPageNumber();

    long getHorizontalDpi();

    String getId();

    STOrientation.Enum getOrientation();

    String getPaperHeight();

    long getPaperSize();

    String getPaperWidth();

    boolean getUseFirstPageNumber();

    boolean getUsePrinterDefaults();

    long getVerticalDpi();

    boolean isSetBlackAndWhite();

    boolean isSetCopies();

    boolean isSetDraft();

    boolean isSetFirstPageNumber();

    boolean isSetHorizontalDpi();

    boolean isSetId();

    boolean isSetOrientation();

    boolean isSetPaperHeight();

    boolean isSetPaperSize();

    boolean isSetPaperWidth();

    boolean isSetUseFirstPageNumber();

    boolean isSetUsePrinterDefaults();

    boolean isSetVerticalDpi();

    void setBlackAndWhite(boolean z);

    void setCopies(long j);

    void setDraft(boolean z);

    void setFirstPageNumber(long j);

    void setHorizontalDpi(long j);

    void setId(String str);

    void setOrientation(STOrientation.Enum r1);

    void setPaperHeight(String str);

    void setPaperSize(long j);

    void setPaperWidth(String str);

    void setUseFirstPageNumber(boolean z);

    void setUsePrinterDefaults(boolean z);

    void setVerticalDpi(long j);

    void unsetBlackAndWhite();

    void unsetCopies();

    void unsetDraft();

    void unsetFirstPageNumber();

    void unsetHorizontalDpi();

    void unsetId();

    void unsetOrientation();

    void unsetPaperHeight();

    void unsetPaperSize();

    void unsetPaperWidth();

    void unsetUseFirstPageNumber();

    void unsetUsePrinterDefaults();

    void unsetVerticalDpi();

    XmlBoolean xgetBlackAndWhite();

    XmlUnsignedInt xgetCopies();

    XmlBoolean xgetDraft();

    XmlUnsignedInt xgetFirstPageNumber();

    XmlUnsignedInt xgetHorizontalDpi();

    STRelationshipId xgetId();

    STOrientation xgetOrientation();

    STPositiveUniversalMeasure xgetPaperHeight();

    XmlUnsignedInt xgetPaperSize();

    STPositiveUniversalMeasure xgetPaperWidth();

    XmlBoolean xgetUseFirstPageNumber();

    XmlBoolean xgetUsePrinterDefaults();

    XmlUnsignedInt xgetVerticalDpi();

    void xsetBlackAndWhite(XmlBoolean xmlBoolean);

    void xsetCopies(XmlUnsignedInt xmlUnsignedInt);

    void xsetDraft(XmlBoolean xmlBoolean);

    void xsetFirstPageNumber(XmlUnsignedInt xmlUnsignedInt);

    void xsetHorizontalDpi(XmlUnsignedInt xmlUnsignedInt);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetOrientation(STOrientation sTOrientation);

    void xsetPaperHeight(STPositiveUniversalMeasure sTPositiveUniversalMeasure);

    void xsetPaperSize(XmlUnsignedInt xmlUnsignedInt);

    void xsetPaperWidth(STPositiveUniversalMeasure sTPositiveUniversalMeasure);

    void xsetUseFirstPageNumber(XmlBoolean xmlBoolean);

    void xsetUsePrinterDefaults(XmlBoolean xmlBoolean);

    void xsetVerticalDpi(XmlUnsignedInt xmlUnsignedInt);
}
