.class public Lcom/google/common/util/concurrent/Futures$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/util/concurrent/Futures$f;

.field public final synthetic f:Lcom/google/common/collect/ImmutableList;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Futures$f;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$c;->e:Lcom/google/common/util/concurrent/Futures$f;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$c;->f:Lcom/google/common/collect/ImmutableList;

    iput p3, p0, Lcom/google/common/util/concurrent/Futures$c;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$c;->e:Lcom/google/common/util/concurrent/Futures$f;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$c;->f:Lcom/google/common/collect/ImmutableList;

    iget p0, p0, Lcom/google/common/util/concurrent/Futures$c;->g:I

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/Futures$f;->a(Lcom/google/common/util/concurrent/Futures$f;Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method
