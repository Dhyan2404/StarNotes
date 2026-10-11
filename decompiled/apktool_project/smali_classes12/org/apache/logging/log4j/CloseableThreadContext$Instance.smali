.class public Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/CloseableThreadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# instance fields
.field public e:I

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->e:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->f:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/logging/log4j/CloseableThreadContext$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->j()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->f()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object p0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/apache/logging/log4j/ThreadContext;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {v1, v0}, Lorg/apache/logging/log4j/ThreadContext;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->e:I

    if-ge v1, v2, :cond_0

    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->pop()Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->e:I

    return-void
.end method

.method public push(Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/logging/log4j/ThreadContext;->push(Ljava/lang/String;)V

    .line 2
    iget p1, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->e:I

    return-object p0
.end method

.method public push(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 0
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

    .line 3
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/ThreadContext;->push(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget p1, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->e:I

    return-object p0
.end method

.method public pushAll(Ljava/util/List;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 1
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

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->push(Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
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

    iget-object v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->f:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/logging/log4j/ThreadContext;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/ThreadContext;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 4
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

    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getContext()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/logging/log4j/ThreadContext;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method
