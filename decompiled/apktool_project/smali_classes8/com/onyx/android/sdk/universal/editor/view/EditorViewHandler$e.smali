.class public final Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->onSplitScreenShowSourceEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lkotlin/Pair;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getManager()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, p0, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->ensureEnableSpiltScreen$default(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$e;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
