.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStylePaneFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStylePaneFilter;",
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

    const-string v2, "ctstylepanefilterd3a1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStylePaneFilter;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStylePaneFilter;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAllStyles()Ljava/lang/Object;
.end method

.method public abstract getAlternateStyleNames()Ljava/lang/Object;
.end method

.method public abstract getClearFormatting()Ljava/lang/Object;
.end method

.method public abstract getCustomStyles()Ljava/lang/Object;
.end method

.method public abstract getDirectFormattingOnNumbering()Ljava/lang/Object;
.end method

.method public abstract getDirectFormattingOnParagraphs()Ljava/lang/Object;
.end method

.method public abstract getDirectFormattingOnRuns()Ljava/lang/Object;
.end method

.method public abstract getDirectFormattingOnTables()Ljava/lang/Object;
.end method

.method public abstract getHeadingStyles()Ljava/lang/Object;
.end method

.method public abstract getLatentStyles()Ljava/lang/Object;
.end method

.method public abstract getNumberingStyles()Ljava/lang/Object;
.end method

.method public abstract getStylesInUse()Ljava/lang/Object;
.end method

.method public abstract getTableStyles()Ljava/lang/Object;
.end method

.method public abstract getTop3HeadingStyles()Ljava/lang/Object;
.end method

.method public abstract getVal()[B
.end method

.method public abstract getVisibleStyles()Ljava/lang/Object;
.end method

.method public abstract isSetAllStyles()Z
.end method

.method public abstract isSetAlternateStyleNames()Z
.end method

.method public abstract isSetClearFormatting()Z
.end method

.method public abstract isSetCustomStyles()Z
.end method

.method public abstract isSetDirectFormattingOnNumbering()Z
.end method

.method public abstract isSetDirectFormattingOnParagraphs()Z
.end method

.method public abstract isSetDirectFormattingOnRuns()Z
.end method

.method public abstract isSetDirectFormattingOnTables()Z
.end method

.method public abstract isSetHeadingStyles()Z
.end method

.method public abstract isSetLatentStyles()Z
.end method

.method public abstract isSetNumberingStyles()Z
.end method

.method public abstract isSetStylesInUse()Z
.end method

.method public abstract isSetTableStyles()Z
.end method

.method public abstract isSetTop3HeadingStyles()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract isSetVisibleStyles()Z
.end method

.method public abstract setAllStyles(Ljava/lang/Object;)V
.end method

.method public abstract setAlternateStyleNames(Ljava/lang/Object;)V
.end method

.method public abstract setClearFormatting(Ljava/lang/Object;)V
.end method

.method public abstract setCustomStyles(Ljava/lang/Object;)V
.end method

.method public abstract setDirectFormattingOnNumbering(Ljava/lang/Object;)V
.end method

.method public abstract setDirectFormattingOnParagraphs(Ljava/lang/Object;)V
.end method

.method public abstract setDirectFormattingOnRuns(Ljava/lang/Object;)V
.end method

.method public abstract setDirectFormattingOnTables(Ljava/lang/Object;)V
.end method

.method public abstract setHeadingStyles(Ljava/lang/Object;)V
.end method

.method public abstract setLatentStyles(Ljava/lang/Object;)V
.end method

.method public abstract setNumberingStyles(Ljava/lang/Object;)V
.end method

.method public abstract setStylesInUse(Ljava/lang/Object;)V
.end method

.method public abstract setTableStyles(Ljava/lang/Object;)V
.end method

.method public abstract setTop3HeadingStyles(Ljava/lang/Object;)V
.end method

.method public abstract setVal([B)V
.end method

.method public abstract setVisibleStyles(Ljava/lang/Object;)V
.end method

.method public abstract unsetAllStyles()V
.end method

.method public abstract unsetAlternateStyleNames()V
.end method

.method public abstract unsetClearFormatting()V
.end method

.method public abstract unsetCustomStyles()V
.end method

.method public abstract unsetDirectFormattingOnNumbering()V
.end method

.method public abstract unsetDirectFormattingOnParagraphs()V
.end method

.method public abstract unsetDirectFormattingOnRuns()V
.end method

.method public abstract unsetDirectFormattingOnTables()V
.end method

.method public abstract unsetHeadingStyles()V
.end method

.method public abstract unsetLatentStyles()V
.end method

.method public abstract unsetNumberingStyles()V
.end method

.method public abstract unsetStylesInUse()V
.end method

.method public abstract unsetTableStyles()V
.end method

.method public abstract unsetTop3HeadingStyles()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract unsetVisibleStyles()V
.end method

.method public abstract xgetAllStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetAlternateStyleNames()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetClearFormatting()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetCustomStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDirectFormattingOnNumbering()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDirectFormattingOnParagraphs()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDirectFormattingOnRuns()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDirectFormattingOnTables()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetHeadingStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLatentStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetNumberingStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetStylesInUse()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetTableStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetTop3HeadingStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;
.end method

.method public abstract xgetVisibleStyles()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xsetAllStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetAlternateStyleNames(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetClearFormatting(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetCustomStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDirectFormattingOnNumbering(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDirectFormattingOnParagraphs(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDirectFormattingOnRuns(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDirectFormattingOnTables(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetHeadingStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLatentStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetNumberingStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetStylesInUse(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetTableStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetTop3HeadingStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;)V
.end method

.method public abstract xsetVisibleStyles(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method
