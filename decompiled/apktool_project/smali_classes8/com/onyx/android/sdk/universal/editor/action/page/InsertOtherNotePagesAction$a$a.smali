.class public final Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a;->a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;->f:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;->access$getFromPageIndex$p(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;)I

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;->f:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;-><init>(ILcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
