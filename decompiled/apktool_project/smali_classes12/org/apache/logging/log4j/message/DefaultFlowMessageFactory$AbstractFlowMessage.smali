.class Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/FlowMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbstractFlowMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final message:Lorg/apache/logging/log4j/message/Message;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "text",
            "message"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {p0}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {p0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
