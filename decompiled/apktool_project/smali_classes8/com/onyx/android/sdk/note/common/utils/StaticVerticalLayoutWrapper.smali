.class public final Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;
.super Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000c\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002JF\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0006\u0010\u001a\u001a\u00020\u000eJ\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0008\u0010\u001d\u001a\u00020\u000eH\u0016J\u0010\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0016\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;",
        "Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;",
        "()V",
        "createStaticLayout",
        "Landroid/text/StaticLayout;",
        "source",
        "",
        "paint",
        "Landroid/text/TextPaint;",
        "widthInt",
        "",
        "align",
        "Landroid/text/Layout$Alignment;",
        "spacingmult",
        "",
        "spacingadd",
        "includepad",
        "",
        "getHeight",
        "getLineBounds",
        "line",
        "bounds",
        "Landroid/graphics/RectF;",
        "getLineEnd",
        "getLineForOffset",
        "offset",
        "getLineHeight",
        "getLineStart",
        "getPrimaryHorizontal",
        "getWidth",
        "needRotate",
        "ch",
        "",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;->Companion:Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)Landroid/text/StaticLayout;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p0
.end method

.method public getHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/RectF;)F
    .locals 4
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    sget-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {v0, p2, v2, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->scale(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public getLineEnd(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineEnd(I)I

    move-result p0

    return p0
.end method

.method public getLineForOffset(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineForOffset(I)I

    move-result p0

    return p0
.end method

.method public final getLineHeight()F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.utils.StaticVerticalLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;->getLineHeight(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getLineStart(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLineStart(I)I

    move-result p0

    return p0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.utils.StaticVerticalLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;->getCursorPosition(I)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public getWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public needRotate(C)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.utils.StaticVerticalLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayout;->needRotate(C)Z

    move-result p0

    return p0
.end method
