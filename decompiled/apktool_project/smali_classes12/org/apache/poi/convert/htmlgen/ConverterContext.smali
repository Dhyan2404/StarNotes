.class public abstract Lorg/apache/poi/convert/htmlgen/ConverterContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FONT_SIZE:I = 0xc


# instance fields
.field protected abort:Z

.field protected breakElement:Lorg/jsoup/nodes/Element;

.field protected breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

.field protected currentPage:Lorg/apache/poi/style/page/PageStyles;

.field protected documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

.field protected fontHeightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected picturesManager:Lorg/apache/poi/picture/PicturesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/HtmlDocumentFacade;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->fontHeightMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    return-void
.end method

.method private getFontHeight(Ljava/lang/String;)F
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->fontHeightMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance v0, Ljava/awt/Font;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 6
    new-instance v1, Ljava/awt/font/FontRenderContext;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    const/4 v3, 0x4

    new-array v3, v3, [F

    .line 7
    invoke-static {v0}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lsun/font/Font2D;->getFontMetrics(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[F)V

    aget v0, v3, v2

    const/4 v1, 0x1

    aget v1, v3, v1

    add-float/2addr v0, v1

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 9
    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->fontHeightMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public checkAbortConvert()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/convert/exception/AbortConvertException;
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->abort:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/convert/exception/AbortConvertException;

    invoke-direct {p0}, Lorg/apache/poi/convert/exception/AbortConvertException;-><init>()V

    throw p0
.end method

.method public getBreakElement()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakElement:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public getBreakType()Lorg/apache/poi/xwpf/usermodel/BreakType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    return-object p0
.end method

.method public getCurrentPage()Lorg/apache/poi/style/page/PageStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->currentPage:Lorg/apache/poi/style/page/PageStyles;

    return-object p0
.end method

.method public getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    return-object p0
.end method

.method public getFontHeight(Ljava/lang/String;F)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getFontHeight(Ljava/lang/String;)F

    move-result p0

    mul-float/2addr p0, p2

    const/high16 p1, 0x41400000    # 12.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public getPicturesManager()Lorg/apache/poi/picture/PicturesManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    return-object p0
.end method

.method public isColumnBreak()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakType;->COLUMN:Lorg/apache/poi/xwpf/usermodel/BreakType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPageBreak()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakType;->PAGE:Lorg/apache/poi/xwpf/usermodel/BreakType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetBreakType()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    iput-object v0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakElement:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public setAbort(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->abort:Z

    return-void
.end method

.method public setBreakElement(Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BreakType;->COLUMN:Lorg/apache/poi/xwpf/usermodel/BreakType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BreakType;->PAGE:Lorg/apache/poi/xwpf/usermodel/BreakType;

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakElement:Lorg/jsoup/nodes/Element;

    :cond_1
    return-void
.end method

.method public setBreakType(Lorg/apache/poi/xwpf/usermodel/BreakType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->breakType:Lorg/apache/poi/xwpf/usermodel/BreakType;

    return-void
.end method

.method public setCurrentPage(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->currentPage:Lorg/apache/poi/style/page/PageStyles;

    return-void
.end method

.method public setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/ConverterContext;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    return-void
.end method
