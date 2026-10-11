.class public Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/spi/ThreadContextStack;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final STACK:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/spi/MutableThreadContextStack;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4d1085L


# instance fields
.field private final useStack:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "useStack"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    return-void
.end method

.method private getNonNullStackCopy()Lorg/apache/logging/log4j/spi/MutableThreadContextStack;
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object p0

    :goto_0
    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->add(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->getNonNullStackCopy()Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->add(Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    .line 6
    sget-object p1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "strings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->getNonNullStackCopy()Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    sget-object p1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public asList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->asList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic copy()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;
    .locals 0

    .line 2
    iget-boolean p0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    new-instance p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-direct {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;-><init>()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;

    iget-boolean p0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    iget-boolean v1, v1, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-eq p0, v1, :cond_2

    return v0

    :cond_2
    instance-of p0, p1, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    if-nez p0, :cond_3

    return v0

    :cond_3
    check-cast p1, Lorg/apache/logging/log4j/spi/ThreadContextStack;

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    const-string p0, "[]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getDepth()I
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->getDepth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getImmutableStackOrNull()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

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

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public peek()Ljava/lang/String;
    .locals 1

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->peek()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public pop()Ljava/lang/String;
    .locals 3

    iget-boolean p0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->pop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public push(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->add(Ljava/lang/String;)Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->useStack:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public size()I
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4
    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_1

    .line 5
    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 6
    aput-object v0, p1, p0

    :cond_0
    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez p0, :cond_0

    const-string p0, "[]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public trim(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    if-ltz p1, :cond_1

    sget-object p0, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;->STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->copy()Lorg/apache/logging/log4j/spi/ThreadContextStack;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->trim(I)V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/spi/MutableThreadContextStack;->freeze()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum stack depth cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
