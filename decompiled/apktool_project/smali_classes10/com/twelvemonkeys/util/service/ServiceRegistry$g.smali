.class public Lcom/twelvemonkeys/util/service/ServiceRegistry$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/service/ServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/twelvemonkeys/util/service/ServiceRegistry;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->c:Lcom/twelvemonkeys/util/service/ServiceRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->b:Ljava/util/Map;

    const-string p1, "category"

    invoke-static {p2, p1}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not instance of category "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->d(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/twelvemonkeys/util/service/RegisterableService;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twelvemonkeys/util/service/RegisterableService;

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->c:Lcom/twelvemonkeys/util/service/ServiceRegistry;

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->a:Ljava/lang/Class;

    invoke-interface {p1, v0, p0}, Lcom/twelvemonkeys/util/service/RegisterableService;->onDeregistration(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/twelvemonkeys/util/service/RegisterableService;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twelvemonkeys/util/service/RegisterableService;

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->c:Lcom/twelvemonkeys/util/service/ServiceRegistry;

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->a:Ljava/lang/Class;

    invoke-interface {p1, v0, p0}, Lcom/twelvemonkeys/util/service/RegisterableService;->onRegistration(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;

    invoke-direct {v1, p0, v0}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g$a;-><init>(Lcom/twelvemonkeys/util/service/ServiceRegistry$g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->e(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
