.class public final Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,540:1\n1855#2,2:541\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$2\n*L\n195#1:541,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,540:1\n1855#2,2:541\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$2\n*L\n195#1:541,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/event/CommandEvent;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/event/CommandEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/event/CommandEvent;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$a;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$a;->f:Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 7
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$a;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$a;->f:Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/command/CloneCommandAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/event/CommandEvent;->getCommand()Lcom/onyx/android/sdk/note/common/command/Command;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/command/CloneCommandAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/command/Command;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$a;->a(Lkotlin/Unit;)V

    return-void
.end method
