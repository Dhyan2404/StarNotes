.class public final synthetic Lcom/sunia/HTREnginev2/q3n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q3n;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    iput p2, p0, Lcom/sunia/HTREnginev2/q3n;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q3n;->e:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    iget p0, p0, Lcom/sunia/HTREnginev2/q3n;->f:I

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;ILandroid/view/View;)V

    return-void
.end method
