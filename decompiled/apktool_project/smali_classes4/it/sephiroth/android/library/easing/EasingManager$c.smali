.class public Lit/sephiroth/android/library/easing/EasingManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/easing/EasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public e:D

.field public final synthetic f:Lit/sephiroth/android/library/easing/EasingManager;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/easing/EasingManager;D)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager$c;->f:Lit/sephiroth/android/library/easing/EasingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lit/sephiroth/android/library/easing/EasingManager$c;->e:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lit/sephiroth/android/library/easing/EasingManager$c;->f:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v0, v0, Lit/sephiroth/android/library/easing/EasingManager;->j:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    iget-wide v1, p0, Lit/sephiroth/android/library/easing/EasingManager$c;->e:D

    invoke-interface {v0, v1, v2}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingStarted(D)V

    return-void
.end method
