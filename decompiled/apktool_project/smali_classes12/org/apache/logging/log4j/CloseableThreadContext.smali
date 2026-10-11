.class public Lorg/apache/logging/log4j/CloseableThreadContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static push(Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;-><init>(Lorg/apache/logging/log4j/CloseableThreadContext$a;)V

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->push(Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    move-result-object p0

    return-object p0
.end method

.method public static varargs push(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "args"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;-><init>(Lorg/apache/logging/log4j/CloseableThreadContext$a;)V

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->push(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    move-result-object p0

    return-object p0
.end method

.method public static pushAll(Ljava/util/List;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/CloseableThreadContext$Instance;"
        }
    .end annotation

    new-instance v0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;-><init>(Lorg/apache/logging/log4j/CloseableThreadContext$a;)V

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushAll(Ljava/util/List;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    new-instance v0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;-><init>(Lorg/apache/logging/log4j/CloseableThreadContext$a;)V

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    move-result-object p0

    return-object p0
.end method

.method public static putAll(Ljava/util/Map;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/CloseableThreadContext$Instance;"
        }
    .end annotation

    new-instance v0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;-><init>(Lorg/apache/logging/log4j/CloseableThreadContext$a;)V

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->putAll(Ljava/util/Map;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    move-result-object p0

    return-object p0
.end method
