.class public final Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;->e:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;->f:D

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;->f:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide v0, p1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;->f:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;->a(Lcom/google/android/material/color/utilities/QuantizerWsmeans$a;)I

    move-result p0

    return p0
.end method
