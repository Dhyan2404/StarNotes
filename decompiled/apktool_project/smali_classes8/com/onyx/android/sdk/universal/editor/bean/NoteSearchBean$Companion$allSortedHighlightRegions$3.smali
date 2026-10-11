.class final Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion$allSortedHighlightRegions$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->allSortedHighlightRegions(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
        "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "a",
        "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
        "kotlin.jvm.PlatformType",
        "b",
        "invoke",
        "(Lcom/onyx/android/sdk/base/data/SelectionRegion;Lcom/onyx/android/sdk/base/data/SelectionRegion;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion$allSortedHighlightRegions$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion$allSortedHighlightRegions$3;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion$allSortedHighlightRegions$3;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion$allSortedHighlightRegions$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion$allSortedHighlightRegions$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/base/data/SelectionRegion;Lcom/onyx/android/sdk/base/data/SelectionRegion;)Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/data/SelectionRegion;

    check-cast p2, Lcom/onyx/android/sdk/base/data/SelectionRegion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion$allSortedHighlightRegions$3;->invoke(Lcom/onyx/android/sdk/base/data/SelectionRegion;Lcom/onyx/android/sdk/base/data/SelectionRegion;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
