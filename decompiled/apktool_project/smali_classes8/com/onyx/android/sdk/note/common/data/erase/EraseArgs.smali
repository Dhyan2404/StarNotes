.class public final Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0005R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u0004\u0010\u000fR\"\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\t\u0010\u0014R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0011\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0007\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "partEraseTrackPoints",
        "setPartEraseTrackPoints",
        "",
        "drawRadius",
        "setDrawRadius",
        "normalizeScale",
        "setNormalizeScale",
        "normalizeDrawRadius",
        "a",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "getPartEraseTrackPoints",
        "()Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V",
        "b",
        "F",
        "getNormalizeScale",
        "()F",
        "(F)V",
        "c",
        "getDrawRadius",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->b:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->c:F

    return-void
.end method


# virtual methods
.method public final getDrawRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->c:F

    return p0
.end method

.method public final getNormalizeScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->b:F

    return p0
.end method

.method public final getPartEraseTrackPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->a:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final normalizeDrawRadius()F
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->c:F

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->b:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public final setDrawRadius(F)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->c:F

    return-object p0
.end method

.method public final setDrawRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->c:F

    return-void
.end method

.method public final setNormalizeScale(F)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->b:F

    return-object p0
.end method

.method public final setNormalizeScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->b:F

    return-void
.end method

.method public final setPartEraseTrackPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->a:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final setPartEraseTrackPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->a:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-void
.end method
