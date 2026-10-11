.class Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;
.source "SourceFile"


# instance fields
.field private markupRun:Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->markupRun:Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    return-void
.end method

.method private handleBookmark(Lorg/apache/poi/xwpf/usermodel/XWPFBookmarkRun;Lorg/jsoup/nodes/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFBookmarkRun;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBookmark(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method private handleComment(Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;Lorg/jsoup/nodes/Element;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#comment_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->markupRun:Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back_comment_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->markupRun:Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;->getIruns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v9, p3, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move v5, v11

    move v6, v8

    move v7, v9

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->handleBodyElement(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Lorg/jsoup/nodes/Element;III)I

    goto/16 :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move v5, v11

    move v6, v8

    move v7, v9

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Nested XWPFMarkupRun:{}/{}, depth:{}"

    invoke-interface {v3, v7, v4, v5, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move v5, v11

    move v6, v8

    move v7, v9

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move v5, v11

    move v6, v8

    move v7, v9

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;Lorg/jsoup/nodes/Element;III)V

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v12

    const-string v13, "Unknown comment run :{}, {}/{}, depth:{}"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v12 .. v17}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;)V

    .line 2
    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->handleRun(Lorg/jsoup/nodes/Element;III)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public handleRun(Lorg/jsoup/nodes/Element;III)V
    .locals 0

    .line 3
    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->markupRun:Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    instance-of p3, p2, Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;

    if-eqz p3, :cond_0

    .line 4
    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;

    invoke-direct {p0, p2, p1, p4}, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->handleComment(Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;Lorg/jsoup/nodes/Element;I)V

    goto :goto_0

    .line 5
    :cond_0
    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFBookmarkRun;

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->handleBookmark(Lorg/apache/poi/xwpf/usermodel/XWPFBookmarkRun;Lorg/jsoup/nodes/Element;)V

    :goto_0
    return-void
.end method
