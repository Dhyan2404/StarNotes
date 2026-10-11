.class Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/ThreadDumpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadDumpMessageProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x303f6fe12e40fe0dL


# instance fields
.field private final formattedMsg:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->formattedMsg:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->access$100(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->formattedMsg:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;->title:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/message/ThreadDumpMessage$a;)V

    return-object v0
.end method
