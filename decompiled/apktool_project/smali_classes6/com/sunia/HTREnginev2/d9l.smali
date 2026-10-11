.class public final Lcom/sunia/HTREnginev2/d9l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/htd;
.end annotation


# static fields
.field public static final c:Lcom/sunia/HTREnginev2/d9l;


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/n4m;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/z<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/d9l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d9l;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/d9l;->c:Lcom/sunia/HTREnginev2/d9l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/d9l;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/sunia/HTREnginev2/e8j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e8j;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/d9l;->a:Lcom/sunia/HTREnginev2/n4m;

    return-void
.end method

.method public static a()Lcom/sunia/HTREnginev2/d9l;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/d9l;->c:Lcom/sunia/HTREnginev2/d9l;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d9l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/z;

    instance-of v2, v1, Lcom/google/protobuf/u;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/protobuf/u;

    invoke-virtual {v1}, Lcom/google/protobuf/u;->x()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/d9l;->j(Ljava/lang/Object;)Lcom/google/protobuf/z;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/protobuf/z;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/d9l;->j(Ljava/lang/Object;)Lcom/google/protobuf/z;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/protobuf/z;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lcom/google/protobuf/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/y;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sunia/HTREnginev2/d9l;->f(Ljava/lang/Object;Lcom/google/protobuf/y;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public f(Ljava/lang/Object;Lcom/google/protobuf/y;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "reader",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/y;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/d9l;->j(Ljava/lang/Object;)Lcom/google/protobuf/z;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/z;->i(Ljava/lang/Object;Lcom/google/protobuf/y;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public g(Ljava/lang/Class;Lcom/google/protobuf/z;)Lcom/google/protobuf/z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/z<",
            "*>;)",
            "Lcom/google/protobuf/z<",
            "*>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d9l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z;

    return-object p0
.end method

.method public h(Ljava/lang/Class;Lcom/google/protobuf/z;)Lcom/google/protobuf/z;
    .locals 1
    .annotation build Lcom/sunia/HTREnginev2/bnd;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/z<",
            "*>;)",
            "Lcom/google/protobuf/z<",
            "*>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d9l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z;

    return-object p0
.end method

.method public i(Ljava/lang/Class;)Lcom/google/protobuf/z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d9l;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/z;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d9l;->a:Lcom/sunia/HTREnginev2/n4m;

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/n4m;->a(Ljava/lang/Class;)Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/d9l;->g(Ljava/lang/Class;Lcom/google/protobuf/z;)Lcom/google/protobuf/z;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public j(Ljava/lang/Object;)Lcom/google/protobuf/z;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/protobuf/z<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/d9l;->i(Ljava/lang/Class;)Lcom/google/protobuf/z;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/d9l;->j(Ljava/lang/Object;)Lcom/google/protobuf/z;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/z;->e(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method
