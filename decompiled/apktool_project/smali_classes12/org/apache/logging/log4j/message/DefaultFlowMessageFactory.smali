.class public Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/FlowMessageFactory;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;,
        Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleEntryMessage;,
        Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;
    }
.end annotation


# static fields
.field private static final ENTRY_DEFAULT_PREFIX:Ljava/lang/String; = "Enter"

.field private static final EXIT_DEFAULT_PREFIX:Ljava/lang/String; = "Exit"

.field private static final serialVersionUID:J = 0x770d81cef7ce3dc8L


# instance fields
.field private final entryText:Ljava/lang/String;

.field private final exitText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Enter"

    const-string v1, "Exit"

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entryText",
            "exitText"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->entryText:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->exitText:Ljava/lang/String;

    return-void
.end method

.method private makeImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    instance-of p0, p1, Lorg/apache/logging/log4j/message/ReusableMessage;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lorg/apache/logging/log4j/message/SimpleMessage;

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getEntryText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->entryText:Ljava/lang/String;

    return-object p0
.end method

.method public getExitText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->exitText:Ljava/lang/String;

    return-object p0
.end method

.method public newEntryMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/EntryMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    new-instance v0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleEntryMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->entryText:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->makeImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleEntryMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    return-object v0
.end method

.method public newExitMessage(Ljava/lang/Object;Lorg/apache/logging/log4j/message/EntryMessage;)Lorg/apache/logging/log4j/message/ExitMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "result",
            "message"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->exitText:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/message/EntryMessage;)V

    return-object v0
.end method

.method public newExitMessage(Ljava/lang/Object;Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/ExitMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "result",
            "message"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->exitText:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/message/Message;)V

    return-object v0
.end method

.method public newExitMessage(Lorg/apache/logging/log4j/message/EntryMessage;)Lorg/apache/logging/log4j/message/ExitMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;->exitText:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleExitMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/EntryMessage;)V

    return-object v0
.end method
