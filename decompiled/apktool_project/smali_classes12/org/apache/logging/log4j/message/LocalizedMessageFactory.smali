.class public Lorg/apache/logging/log4j/message/LocalizedMessageFactory;
.super Lorg/apache/logging/log4j/message/AbstractMessageFactory;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1bb44476105a2af5L


# instance fields
.field private final baseName:Ljava/lang/String;

.field private final transient resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "baseName"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/AbstractMessageFactory;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    .line 6
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceBundle"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/AbstractMessageFactory;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    return-object p0
.end method

.method public newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/logging/log4j/message/LocalizedMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/logging/log4j/message/LocalizedMessage;

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "params"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->resourceBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lorg/apache/logging/log4j/message/LocalizedMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessageFactory;->baseName:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/logging/log4j/message/LocalizedMessage;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
