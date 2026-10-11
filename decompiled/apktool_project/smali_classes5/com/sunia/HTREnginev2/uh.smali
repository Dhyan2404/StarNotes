.class public final synthetic Lcom/sunia/HTREnginev2/uh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/AudioFocusManager$a;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/AudioFocusManager$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uh;->e:Lcom/google/android/exoplayer2/AudioFocusManager$a;

    iput p2, p0, Lcom/sunia/HTREnginev2/uh;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uh;->e:Lcom/google/android/exoplayer2/AudioFocusManager$a;

    iget p0, p0, Lcom/sunia/HTREnginev2/uh;->f:I

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/AudioFocusManager$a;->a(Lcom/google/android/exoplayer2/AudioFocusManager$a;I)V

    return-void
.end method
