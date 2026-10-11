.class public final Lcom/google/android/material/color/utilities/Hct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->a(I)V

    return-void
.end method

.method public static from(DDD)Lcom/google/android/material/color/utilities/Hct;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result p0

    new-instance p1, Lcom/google/android/material/color/utilities/Hct;

    invoke-direct {p1, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    return-object p1
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/Hct;
    .locals 1

    new-instance v0, Lcom/google/android/material/color/utilities/Hct;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/color/utilities/Hct;->d:I

    invoke-static {p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/material/color/utilities/Hct;->a:D

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->b:D

    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->c:D

    return-void
.end method

.method public getChroma()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->b:D

    return-wide v0
.end method

.method public getHue()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->a:D

    return-wide v0
.end method

.method public getTone()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->c:D

    return-wide v0
.end method

.method public inViewingConditions(Lcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Hct;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/color/utilities/Cam16;->g(Lcom/google/android/material/color/utilities/ViewingConditions;[D)[D

    move-result-object p0

    const/4 p1, 0x0

    aget-wide v0, p0, p1

    const/4 p1, 0x1

    aget-wide v2, p0, p1

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->e(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v3

    aget-wide p0, p0, p1

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromY(D)D

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    return-object p0
.end method

.method public setChroma(D)V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->a:D

    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->c:D

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->a(I)V

    return-void
.end method

.method public setHue(D)V
    .locals 6

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/Hct;->b:D

    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->c:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->a(I)V

    return-void
.end method

.method public setTone(D)V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->a:D

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/Hct;->b:D

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->a(I)V

    return-void
.end method

.method public toInt()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Hct;->d:I

    return p0
.end method
