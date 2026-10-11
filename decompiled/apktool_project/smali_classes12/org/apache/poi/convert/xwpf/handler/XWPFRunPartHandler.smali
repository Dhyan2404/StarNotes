.class abstract Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/ConverterHandler;
.implements Ljava/io/Closeable;


# instance fields
.field LOG:Lorg/apache/logging/log4j/Logger;

.field context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    return-void
.end method

.method public static handleRunPart(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IRunPart;Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
    .locals 7

    .line 1
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFFldCharHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFFldCharHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFCTText;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFRuby;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFRubyHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFRuby;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRubyHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRuby;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBreakHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFBreakHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFBreak;)V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFEmptyHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFEmptyHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;)V

    goto :goto_0

    .line 11
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    if-eqz v0, :cond_5

    .line 12
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;)V

    goto :goto_0

    .line 13
    :cond_5
    instance-of v0, p1, Lorg/apache/poi/wp/usermodel/IPicture;

    if-eqz v0, :cond_6

    .line 14
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;

    check-cast p1, Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/wp/usermodel/IPicture;)V

    goto :goto_0

    .line 15
    :cond_6
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFUnknownPartHandler;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFUnknownPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IRunPart;)V

    :goto_0
    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 16
    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V

    .line 17
    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->close()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public abstract handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
.end method
