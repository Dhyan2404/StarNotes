.class public final synthetic Lcom/sunia/HTREnginev2/s00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s00;->e:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s00;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s00;->e:Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s00;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;->a(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
