.class public final Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->openAnotherDocument(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;->f:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->openAnotherDocument(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$i;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
