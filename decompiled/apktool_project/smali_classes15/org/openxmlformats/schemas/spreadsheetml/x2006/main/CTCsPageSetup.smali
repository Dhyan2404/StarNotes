.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCsPageSetup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCsPageSetup;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctcspagesetupf5fdtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCsPageSetup;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCsPageSetup;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBlackAndWhite()Z
.end method

.method public abstract getCopies()J
.end method

.method public abstract getDraft()Z
.end method

.method public abstract getFirstPageNumber()J
.end method

.method public abstract getHorizontalDpi()J
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOrientation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;
.end method

.method public abstract getPaperHeight()Ljava/lang/String;
.end method

.method public abstract getPaperSize()J
.end method

.method public abstract getPaperWidth()Ljava/lang/String;
.end method

.method public abstract getUseFirstPageNumber()Z
.end method

.method public abstract getUsePrinterDefaults()Z
.end method

.method public abstract getVerticalDpi()J
.end method

.method public abstract isSetBlackAndWhite()Z
.end method

.method public abstract isSetCopies()Z
.end method

.method public abstract isSetDraft()Z
.end method

.method public abstract isSetFirstPageNumber()Z
.end method

.method public abstract isSetHorizontalDpi()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetOrientation()Z
.end method

.method public abstract isSetPaperHeight()Z
.end method

.method public abstract isSetPaperSize()Z
.end method

.method public abstract isSetPaperWidth()Z
.end method

.method public abstract isSetUseFirstPageNumber()Z
.end method

.method public abstract isSetUsePrinterDefaults()Z
.end method

.method public abstract isSetVerticalDpi()Z
.end method

.method public abstract setBlackAndWhite(Z)V
.end method

.method public abstract setCopies(J)V
.end method

.method public abstract setDraft(Z)V
.end method

.method public abstract setFirstPageNumber(J)V
.end method

.method public abstract setHorizontalDpi(J)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setOrientation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;)V
.end method

.method public abstract setPaperHeight(Ljava/lang/String;)V
.end method

.method public abstract setPaperSize(J)V
.end method

.method public abstract setPaperWidth(Ljava/lang/String;)V
.end method

.method public abstract setUseFirstPageNumber(Z)V
.end method

.method public abstract setUsePrinterDefaults(Z)V
.end method

.method public abstract setVerticalDpi(J)V
.end method

.method public abstract unsetBlackAndWhite()V
.end method

.method public abstract unsetCopies()V
.end method

.method public abstract unsetDraft()V
.end method

.method public abstract unsetFirstPageNumber()V
.end method

.method public abstract unsetHorizontalDpi()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetOrientation()V
.end method

.method public abstract unsetPaperHeight()V
.end method

.method public abstract unsetPaperSize()V
.end method

.method public abstract unsetPaperWidth()V
.end method

.method public abstract unsetUseFirstPageNumber()V
.end method

.method public abstract unsetUsePrinterDefaults()V
.end method

.method public abstract unsetVerticalDpi()V
.end method

.method public abstract xgetBlackAndWhite()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCopies()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDraft()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFirstPageNumber()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetHorizontalDpi()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetOrientation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation;
.end method

.method public abstract xgetPaperHeight()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;
.end method

.method public abstract xgetPaperSize()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPaperWidth()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;
.end method

.method public abstract xgetUseFirstPageNumber()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUsePrinterDefaults()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVerticalDpi()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetBlackAndWhite(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCopies(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDraft(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFirstPageNumber(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetHorizontalDpi(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetOrientation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation;)V
.end method

.method public abstract xsetPaperHeight(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;)V
.end method

.method public abstract xsetPaperSize(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPaperWidth(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;)V
.end method

.method public abstract xsetUseFirstPageNumber(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUsePrinterDefaults(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVerticalDpi(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
