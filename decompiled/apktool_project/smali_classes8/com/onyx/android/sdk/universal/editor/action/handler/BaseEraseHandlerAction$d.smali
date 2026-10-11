.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->display(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Landroid/graphics/RectF;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;->e:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 10
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
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToPageDisplayRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$d;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
