.class final Lcom/onyx/android/sdk/pen/PenBrushResult$drawMask$paintHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pen/PenBrushResult;->b(Landroid/graphics/Canvas;IILcom/onyx/android/sdk/pen/PenBrushInk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/onyx/android/sdk/pen/PenBrushResult$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Lcom/onyx/android/sdk/pen/PenBrushResult$a;",
        "invoke",
        "(Ljava/lang/Integer;)Lcom/onyx/android/sdk/pen/PenBrushResult$a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $pointAlphaInt:I

.field final synthetic $shapeColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$drawMask$paintHolder$1;->$shapeColor:I

    iput p2, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$drawMask$paintHolder$1;->$pointAlphaInt:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Integer;)Lcom/onyx/android/sdk/pen/PenBrushResult$a;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/onyx/android/sdk/pen/PenBrushResult$a;

    iget v0, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$drawMask$paintHolder$1;->$shapeColor:I

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenBrushResult$drawMask$paintHolder$1;->$pointAlphaInt:I

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/pen/PenBrushResult$a;-><init>(II)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/PenBrushResult$drawMask$paintHolder$1;->invoke(Ljava/lang/Integer;)Lcom/onyx/android/sdk/pen/PenBrushResult$a;

    move-result-object p0

    return-object p0
.end method
