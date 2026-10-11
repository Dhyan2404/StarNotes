.class public final Lcom/onyx/android/sdk/base/lite/extension/PathKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "getQuadToEndPos",
        "",
        "current",
        "next",
        "factor",
        "copy",
        "Landroid/graphics/Path;",
        "sdk-baselite_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final copy(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p0    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static final getQuadToEndPos(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static synthetic getQuadToEndPos$default(FFFILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const p2, 0x3f333333    # 0.7f

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/lite/extension/PathKt;->getQuadToEndPos(FFF)F

    move-result p0

    return p0
.end method
