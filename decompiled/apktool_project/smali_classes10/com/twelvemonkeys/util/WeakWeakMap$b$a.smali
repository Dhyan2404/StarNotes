.class public Lcom/twelvemonkeys/util/WeakWeakMap$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/util/WeakWeakMap$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/twelvemonkeys/util/WeakWeakMap$b;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/WeakWeakMap$b;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/util/WeakWeakMap$b$a;->f:Lcom/twelvemonkeys/util/WeakWeakMap$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/twelvemonkeys/util/WeakWeakMap$b;->e:Lcom/twelvemonkeys/util/WeakWeakMap;

    invoke-static {p1}, Lcom/twelvemonkeys/util/WeakWeakMap;->b(Lcom/twelvemonkeys/util/WeakWeakMap;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/util/WeakWeakMap$b$a;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/WeakWeakMap$b$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/WeakWeakMap$b$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/WeakWeakMap$b$a;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
