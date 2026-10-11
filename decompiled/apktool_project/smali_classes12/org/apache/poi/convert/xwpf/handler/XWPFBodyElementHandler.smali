.class abstract Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/BodyElementHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/convert/htmlgen/BodyElementHandler<",
        "TB;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected LOG:Lorg/apache/logging/log4j/Logger;

.field protected context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

.field protected paragraphSize:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->paragraphSize:I

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    return-void
.end method

.method public static createHandler(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/convert/xwpf/handler/XWPFContext;",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ")",
            "Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$BodyElementType:[I

    invoke-interface {p1}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFSDT;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    return-object v0
.end method

.method public static handleBodyElement(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Lorg/jsoup/nodes/Element;III)I
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->createHandler(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->handleIBodyElement(Lorg/jsoup/nodes/Element;III)V

    iget p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->paragraphSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public handleIBodyElement(Lorg/jsoup/nodes/Element;III)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/poi/convert/htmlgen/BodyElementHandler;->handleBodyElement(Lorg/jsoup/nodes/Element;III)V

    return-void
.end method
