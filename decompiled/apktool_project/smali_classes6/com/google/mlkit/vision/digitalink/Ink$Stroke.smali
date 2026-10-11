.class public abstract Lcom/google/mlkit/vision/digitalink/Ink$Stroke;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/digitalink/Ink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stroke"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;-><init>(Lcom/google/mlkit/vision/digitalink/zzm;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPoints()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/digitalink/Ink$Point;",
            ">;"
        }
    .end annotation
.end method
