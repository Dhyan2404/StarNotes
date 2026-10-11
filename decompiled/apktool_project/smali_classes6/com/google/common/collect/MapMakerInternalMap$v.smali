.class public final Lcom/google/common/collect/MapMakerInternalMap$v;
.super Lcom/google/common/collect/MapMakerInternalMap$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$c<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$v<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$w<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$v<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile g:Lcom/google/common/collect/MapMakerInternalMap$x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$x<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$c;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$i;)V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/MapMakerInternalMap$v;)Lcom/google/common/collect/MapMakerInternalMap$x;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/common/collect/MapMakerInternalMap$v;Lcom/google/common/collect/MapMakerInternalMap$x;)Lcom/google/common/collect/MapMakerInternalMap$x;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$x;->clear()V

    return-void
.end method

.method public d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$v;)Lcom/google/common/collect/MapMakerInternalMap$v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$v;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$c;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$c;->e:I

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/common/collect/MapMakerInternalMap$v;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$v;)V

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    invoke-interface {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$x;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$i;)Lcom/google/common/collect/MapMakerInternalMap$x;

    move-result-object p0

    iput-object p0, v0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    return-object v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$y;

    invoke-direct {v1, p2, p1, p0}, Lcom/google/common/collect/MapMakerInternalMap$y;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$i;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$x;->clear()V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$x;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValueReference()Lcom/google/common/collect/MapMakerInternalMap$x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$x<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->g:Lcom/google/common/collect/MapMakerInternalMap$x;

    return-object p0
.end method
