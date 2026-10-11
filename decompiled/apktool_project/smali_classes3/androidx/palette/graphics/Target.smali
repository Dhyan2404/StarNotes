.class public final Landroidx/palette/graphics/Target;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/Target$Builder;
    }
.end annotation


# static fields
.field public static final DARK_MUTED:Landroidx/palette/graphics/Target;

.field public static final DARK_VIBRANT:Landroidx/palette/graphics/Target;

.field public static final LIGHT_MUTED:Landroidx/palette/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

.field public static final MUTED:Landroidx/palette/graphics/Target;

.field public static final VIBRANT:Landroidx/palette/graphics/Target;

.field public static final e:F = 0.26f

.field public static final f:F = 0.45f

.field public static final g:F = 0.55f

.field public static final h:F = 0.74f

.field public static final i:F = 0.3f

.field public static final j:F = 0.5f

.field public static final k:F = 0.7f

.field public static final l:F = 0.3f

.field public static final m:F = 0.4f

.field public static final n:F = 1.0f

.field public static final o:F = 0.35f

.field public static final p:F = 0.24f

.field public static final q:F = 0.52f

.field public static final r:F = 0.24f

.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I = 0x0

.field public static final w:I = 0x1

.field public static final x:I = 0x2


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:[F

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->c(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->f(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->e(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->f(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->b(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->f(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->c(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->d(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->e(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->d(Landroidx/palette/graphics/Target;)V

    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-static {v0}, Landroidx/palette/graphics/Target;->b(Landroidx/palette/graphics/Target;)V

    invoke-static {v0}, Landroidx/palette/graphics/Target;->d(Landroidx/palette/graphics/Target;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Landroidx/palette/graphics/Target;->a:[F

    new-array v2, v0, [F

    .line 3
    iput-object v2, p0, Landroidx/palette/graphics/Target;->b:[F

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Landroidx/palette/graphics/Target;->c:[F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/palette/graphics/Target;->d:Z

    .line 6
    invoke-static {v1}, Landroidx/palette/graphics/Target;->h([F)V

    .line 7
    invoke-static {v2}, Landroidx/palette/graphics/Target;->h([F)V

    .line 8
    invoke-virtual {p0}, Landroidx/palette/graphics/Target;->g()V

    return-void
.end method

.method public constructor <init>(Landroidx/palette/graphics/Target;)V
    .locals 5
    .param p1    # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 10
    iput-object v1, p0, Landroidx/palette/graphics/Target;->a:[F

    new-array v2, v0, [F

    .line 11
    iput-object v2, p0, Landroidx/palette/graphics/Target;->b:[F

    new-array v0, v0, [F

    .line 12
    iput-object v0, p0, Landroidx/palette/graphics/Target;->c:[F

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, p0, Landroidx/palette/graphics/Target;->d:Z

    .line 14
    iget-object p0, p1, Landroidx/palette/graphics/Target;->a:[F

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object p0, p1, Landroidx/palette/graphics/Target;->b:[F

    array-length v1, v2

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object p0, p1, Landroidx/palette/graphics/Target;->c:[F

    array-length p1, v0

    invoke-static {p0, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static b(Landroidx/palette/graphics/Target;)V
    .locals 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->b:[F

    const/4 v0, 0x1

    const v1, 0x3e851eb8    # 0.26f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ee66666    # 0.45f

    aput v1, p0, v0

    return-void
.end method

.method public static c(Landroidx/palette/graphics/Target;)V
    .locals 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->b:[F

    const/4 v0, 0x0

    const v1, 0x3f0ccccd    # 0.55f

    aput v1, p0, v0

    const/4 v0, 0x1

    const v1, 0x3f3d70a4    # 0.74f

    aput v1, p0, v0

    return-void
.end method

.method public static d(Landroidx/palette/graphics/Target;)V
    .locals 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->a:[F

    const/4 v0, 0x1

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ecccccd    # 0.4f

    aput v1, p0, v0

    return-void
.end method

.method public static e(Landroidx/palette/graphics/Target;)V
    .locals 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->b:[F

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3f333333    # 0.7f

    aput v1, p0, v0

    return-void
.end method

.method public static f(Landroidx/palette/graphics/Target;)V
    .locals 2

    iget-object p0, p0, Landroidx/palette/graphics/Target;->a:[F

    const/4 v0, 0x0

    const v1, 0x3eb33333    # 0.35f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-void
.end method

.method public static h([F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    aput v1, p0, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Landroidx/palette/graphics/Target;->c:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v5, p0, Landroidx/palette/graphics/Target;->c:[F

    aget v5, v5, v3

    cmpl-float v6, v5, v1

    if-lez v6, :cond_0

    add-float/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v0, v4, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/palette/graphics/Target;->c:[F

    array-length v0, v0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/palette/graphics/Target;->c:[F

    aget v5, v3, v2

    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    div-float/2addr v5, v4

    aput v5, v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object p0, p0, Landroidx/palette/graphics/Target;->c:[F

    const/4 v0, 0x0

    const v1, 0x3e75c28f    # 0.24f

    aput v1, p0, v0

    const/4 v0, 0x1

    const v2, 0x3f051eb8    # 0.52f

    aput v2, p0, v0

    const/4 v0, 0x2

    aput v1, p0, v0

    return-void
.end method

.method public getLightnessWeight()F
    .locals 1

    iget-object p0, p0, Landroidx/palette/graphics/Target;->c:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getMaximumLightness()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->b:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getMaximumSaturation()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->a:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getMinimumLightness()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->b:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getMinimumSaturation()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->a:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getPopulationWeight()F
    .locals 1

    iget-object p0, p0, Landroidx/palette/graphics/Target;->c:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getSaturationWeight()F
    .locals 1

    iget-object p0, p0, Landroidx/palette/graphics/Target;->c:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getTargetLightness()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->b:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getTargetSaturation()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Landroidx/palette/graphics/Target;->a:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public isExclusive()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/palette/graphics/Target;->d:Z

    return p0
.end method
