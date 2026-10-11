.class public final Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;
.super Lorg/apache/logging/log4j/message/AbstractMessageFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

.field private static final serialVersionUID:J = 0x45c5c3419effa164L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/AbstractMessageFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p0, Lorg/apache/logging/log4j/message/SimpleMessage;

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method
