.class public Lcom/twelvemonkeys/util/WeakWeakMap$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/WeakWeakMap$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/twelvemonkeys/util/WeakWeakMap$a;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/WeakWeakMap$a;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/WeakWeakMap$a$a;->f:Lcom/twelvemonkeys/util/WeakWeakMap$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/twelvemonkeys/util/WeakWeakMap$a;->e:Lcom/twelvemonkeys/util/WeakWeakMap;

    invoke-static {p1}, Lcom/twelvemonkeys/util/WeakWeakMap;->a(Lcom/twelvemonkeys/util/WeakWeakMap;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/util/WeakWeakMap$a$a;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/WeakWeakMap$a$a$a;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/util/WeakWeakMap$a$a$a;-><init>(Lcom/twelvemonkeys/util/WeakWeakMap$a$a;)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/WeakWeakMap$a$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/WeakWeakMap$a$a;->a()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/WeakWeakMap$a$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
