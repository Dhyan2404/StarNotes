.class public final Lorg/apache/logging/log4j/message/ObjectArrayMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# static fields
.field private static final serialVersionUID:J = -0x51eca303cf4ef8a9L


# instance fields
.field private transient array:[Ljava/lang/Object;

.field private transient arrayString:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/logging/log4j/util/Constants;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    return-void
.end method

.method private equalObjectsOrStrings([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lorg/apache/logging/log4j/message/ObjectArrayMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/message/ObjectArrayMessage;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object p0, p1, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-direct {p0, v2, p1}, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->equalObjectsOrStrings([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->arrayString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->arrayString:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->arrayString:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
