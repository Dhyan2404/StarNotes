.class public final Lcom/google/android/material/shape/OffsetEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/material/shape/EdgeTreatment;

.field public final f:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/EdgeTreatment;F)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/EdgeTreatment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->e:Lcom/google/android/material/shape/EdgeTreatment;

    iput p2, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->f:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->e:Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {p0}, Lcom/google/android/material/shape/EdgeTreatment;->a()Z

    move-result p0

    return p0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 1
    .param p4    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->e:Lcom/google/android/material/shape/EdgeTreatment;

    iget p0, p0, Lcom/google/android/material/shape/OffsetEdgeTreatment;->f:F

    sub-float/2addr p2, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    return-void
.end method
