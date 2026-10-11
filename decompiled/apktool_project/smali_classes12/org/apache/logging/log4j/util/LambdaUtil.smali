.class public final Lorg/apache/logging/log4j/util/LambdaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/logging/log4j/message/Message;

    invoke-interface {p0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static get(Lorg/apache/logging/log4j/util/MessageSupplier;)Lorg/apache/logging/log4j/message/Message;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "supplier"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/apache/logging/log4j/util/MessageSupplier;->get()Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getAll([Lorg/apache/logging/log4j/util/Supplier;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/logging/log4j/util/LambdaUtil;->get(Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getMessage(Lorg/apache/logging/log4j/util/Supplier;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "supplier",
            "messageFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")",
            "Lorg/apache/logging/log4j/message/Message;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/logging/log4j/message/Message;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    :goto_0
    return-object p0
.end method
