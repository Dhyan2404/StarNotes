.class public Lorg/apache/poi/convert/xwpf/handler/XWPFUnknownPartHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# instance fields
.field part:Lorg/apache/poi/xwpf/usermodel/IRunPart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IRunPart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFUnknownPartHandler;->part:Lorg/apache/poi/xwpf/usermodel/IRunPart;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown run part: {}"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFUnknownPartHandler;->part:Lorg/apache/poi/xwpf/usermodel/IRunPart;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 0

    return-void
.end method
