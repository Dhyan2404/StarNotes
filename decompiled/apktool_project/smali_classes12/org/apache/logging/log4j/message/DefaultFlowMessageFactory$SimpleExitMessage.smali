.class final Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;
.super Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/ExitMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleExitMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final isVoid:Z

.field private final result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/message/EntryMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "exitText",
            "result",
            "message"
        }
    .end annotation

    .line 4
    invoke-interface {p3}, Lorg/apache/logging/log4j/message/FlowMessage;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    .line 5
    iput-object p2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/message/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "exitText",
            "result",
            "message"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p3}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    .line 8
    iput-object p2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/EntryMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "exitText",
            "message"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/apache/logging/log4j/message/FlowMessage;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    return-void
.end method


# virtual methods
.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->isVoid:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;->result:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
