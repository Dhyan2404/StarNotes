.class public Lorg/apache/poi/style/TableRowStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# instance fields
.field private fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

.field private height:Lorg/apache/poi/style/UnitValue;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/style/TableRowStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableRowStyles;->parse(Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;)V

    return-void
.end method

.method private parse(Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getTableRowHeight()Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/TableRowStyles;->height:Lorg/apache/poi/style/UnitValue;

    return-void
.end method


# virtual methods
.method public toStyle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/style/TableRowStyles;->height:Lorg/apache/poi/style/UnitValue;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/style/TableRowStyles;->height:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/TableRowStyles;->height:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
