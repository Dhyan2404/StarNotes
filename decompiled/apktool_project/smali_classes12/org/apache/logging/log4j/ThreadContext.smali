.class public final Lorg/apache/logging/log4j/ThreadContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/ThreadContext$ContextStack;,
        Lorg/apache/logging/log4j/ThreadContext$b;,
        Lorg/apache/logging/log4j/ThreadContext$EmptyThreadContextStack;
    }
.end annotation


# static fields
.field public static final EMPTY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

.field public static final a:Ljava/lang/String; = "disableThreadContextMap"

.field public static final b:Ljava/lang/String; = "disableThreadContextStack"

.field public static final c:Ljava/lang/String; = "disableThreadContext"

.field public static d:Z

.field public static e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

.field public static f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

.field public static g:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_MAP:Ljava/util/Map;

    new-instance v0, Lorg/apache/logging/log4j/ThreadContext$EmptyThreadContextStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/ThreadContext$EmptyThreadContextStack;-><init>(Lorg/apache/logging/log4j/ThreadContext$a;)V

    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 6

    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->init()V

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v1

    const-string v2, "disableThreadContext"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "disableThreadContextStack"

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    sput-boolean v3, Lorg/apache/logging/log4j/ThreadContext;->d:Z

    const-string v3, "disableThreadContextMap"

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    new-instance v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;

    sget-boolean v2, Lorg/apache/logging/log4j/ThreadContext;->d:Z

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;-><init>(Z)V

    sput-object v1, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    if-nez v4, :cond_2

    new-instance v1, Lorg/apache/logging/log4j/spi/NoOpThreadContextMap;

    invoke-direct {v1}, Lorg/apache/logging/log4j/spi/NoOpThreadContextMap;-><init>()V

    sput-object v1, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->createThreadContextMap()Lorg/apache/logging/log4j/spi/ThreadContextMap;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    :goto_2
    sget-object v1, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    instance-of v2, v1, Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    sput-object v1, Lorg/apache/logging/log4j/ThreadContext;->g:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    goto :goto_3

    :cond_3
    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->g:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    :goto_3
    return-void
.end method

.method public static clearAll()V
    .locals 0

    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->clearMap()V

    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->clearStack()V

    return-void
.end method

.method public static clearMap()V
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->clear()V

    return-void
.end method

.method public static clearStack()V
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public static cloneStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->copy()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    return-object v0
.end method

.method public static containsKey(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->getCopy()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getDepth()I
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->getDepth()I

    move-result v0

    return v0
.end method

.method public static getImmutableContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->getImmutableMapOrNull()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public static getImmutableStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->getImmutableStackOrNull()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    :cond_0
    return-object v0
.end method

.method public static getThreadContextMap()Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->g:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    return-object v0
.end method

.method public static isEmpty()Z
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static peek()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->peek()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pop()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->pop()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static push(Ljava/lang/String;)V
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
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->push(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs push(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
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
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->push(Ljava/lang/String;)V

    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "m"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    instance-of v1, v0, Lorg/apache/logging/log4j/spi/ThreadContextMap2;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/spi/ThreadContextMap2;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap2;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static putIfNull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static removeAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    instance-of v1, v0, Lorg/apache/logging/log4j/spi/CleanableThreadContextMap;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/spi/CleanableThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/CleanableThreadContextMap;->removeAll(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;->removeAll(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/ThreadContext;->e:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static removeStack()V
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public static setStack(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/logging/log4j/ThreadContext;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static trim(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->f:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->trim(I)V

    return-void
.end method
