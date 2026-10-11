.class Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFSDT;",
        ">;"
    }
.end annotation


# instance fields
.field private xwpfsdt:Lorg/apache/poi/xwpf/usermodel/XWPFSDT;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFSDT;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;->xwpfsdt:Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    return-void
.end method

.method private getBodyElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ISDTContents;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;->xwpfsdt:Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->getBodyElements()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleSdtImpl(Lorg/jsoup/nodes/Element;III)I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->checkAbortConvert()V

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;->xwpfsdt:Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->readDocument()V

    add-int/lit8 v7, p4, 0x1

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;->getBodyElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v1, 0x0

    move v10, v1

    move v11, v10

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/ISDTContents;

    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move v4, v11

    move v5, v8

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->handleBodyElement(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Lorg/jsoup/nodes/Element;III)I

    move-result v1

    add-int/2addr v10, v1

    :goto_1
    move-object/from16 v2, p1

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v12

    const-string v13, "SDT run: parent:{}/{}, sdt:{}/{}, depth:{}"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v12 .. v18}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p1

    move v4, v11

    move v5, v8

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    const-string v4, "Unsupported sdt type: {}"

    invoke-interface {v3, v4, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;->xwpfsdt:Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_2
    return v10
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;->xwpfsdt:Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public handleBodyElement(Lorg/jsoup/nodes/Element;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/convert/xwpf/handler/XWPFSDTHandler;->handleSdtImpl(Lorg/jsoup/nodes/Element;III)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->paragraphSize:I

    return-void
.end method
