.class public final Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartUniversalShapeAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartUniversalShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartUniversalShapeAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;)Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPageUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findVisibleBoxInfoByNotePageId$default(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartUniversalShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction$c;->a(Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartUniversalShapeAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
