.class public final Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\"\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001c\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0014\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "targetPageInfo",
        "",
        "pageIndex",
        "Lio/reactivex/rxjava3/core/Observable;",
        "afterInserted",
        "a",
        "b",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$mergePageLayers(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;->a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateValidShapeNotePageIds(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;->b(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$mergePageLayers$1;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$mergePageLayers$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final afterInserted(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
            "I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetPageInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/request/page/CloseVirtualPolicyRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/page/CloseVirtualPolicyRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$b;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$b;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$c;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$c;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$d;

    invoke-direct {p2, p1, p3}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$d;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$updateValidShapeNotePageIds$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion$updateValidShapeNotePageIds$1;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
