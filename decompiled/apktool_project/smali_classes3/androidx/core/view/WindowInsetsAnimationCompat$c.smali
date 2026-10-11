.class public Landroidx/core/view/WindowInsetsAnimationCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public b:F

.field public final c:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:J

.field public e:F


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->a:I

    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->c:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->d:J

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->e:F

    return p0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->d:J

    return-wide v0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    return p0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    return p0
.end method

.method public e()Landroid/view/animation/Interpolator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->c:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->a:I

    return p0
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->e:F

    return-void
.end method

.method public h(F)V
    .locals 0

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    return-void
.end method
