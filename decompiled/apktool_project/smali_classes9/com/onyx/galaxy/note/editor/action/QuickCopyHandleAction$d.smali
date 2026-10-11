.class public final Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/TouchPoint;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;->e:Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;->e:Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->access$hitTestBoxInfo(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
