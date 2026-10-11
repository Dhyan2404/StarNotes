.class final Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout$isUpperLine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->isUpperLine(Landroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function6<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "currentBaseline",
        "",
        "prevBaseline",
        "currentTextSize",
        "prevTextSize",
        "minLineHeight",
        "maxLineHeight",
        "invoke",
        "(FFFFFF)Ljava/lang/Boolean;"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout$isUpperLine$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout$isUpperLine$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout$isUpperLine$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout$isUpperLine$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout$isUpperLine$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(FFFFFF)Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sub-float/2addr p1, p2

    .line 2
    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->access$getUpperLineMinRange$p()F

    move-result p0

    mul-float/2addr p0, p6

    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;->access$getUpperLineMaxRange$p()F

    move-result p2

    mul-float/2addr p6, p2

    cmpg-float p2, p1, p6

    const/4 p3, 0x0

    if-gtz p2, :cond_0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p3, 0x1

    .line 3
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout$isUpperLine$1;->invoke(FFFFFF)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
