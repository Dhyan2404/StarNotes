.class public Lcom/sunia/HTREnginev2/kbl;
.super Lcom/sunia/HTREnginev2/ebl;
.source "SourceFile"


# instance fields
.field public final t:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/ebl;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/kbl;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
