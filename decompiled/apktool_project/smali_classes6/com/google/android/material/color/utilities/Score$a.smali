.class public Lcom/google/android/material/color/utilities/Score$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/Score;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/utilities/Score$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/color/utilities/Score$b;Lcom/google/android/material/color/utilities/Score$b;)I
    .locals 2

    iget-wide v0, p2, Lcom/google/android/material/color/utilities/Score$b;->b:D

    iget-wide p0, p1, Lcom/google/android/material/color/utilities/Score$b;->b:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/material/color/utilities/Score$b;

    check-cast p2, Lcom/google/android/material/color/utilities/Score$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/utilities/Score$a;->a(Lcom/google/android/material/color/utilities/Score$b;Lcom/google/android/material/color/utilities/Score$b;)I

    move-result p0

    return p0
.end method
