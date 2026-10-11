.class public final synthetic Lcom/sunia/HTREnginev2/mll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mll;->e:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mll;->e:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$c;

    invoke-static {p0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$c;->b(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$c;)V

    return-void
.end method
