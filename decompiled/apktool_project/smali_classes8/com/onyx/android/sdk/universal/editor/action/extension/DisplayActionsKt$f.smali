.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->preRender(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

.field public final synthetic f:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt$f;->e:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt$f;->f:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt$f;->e:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt$f;->f:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->collectPreRenderBoxList(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt$f;->a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
