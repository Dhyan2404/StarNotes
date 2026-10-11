.class public Lcom/sunia/HTREnginev2/ibl;
.super Lcom/sunia/HTREnginev2/gbl;
.source "SourceFile"


# instance fields
.field public final w0:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/gbl;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ibl;->w0:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
