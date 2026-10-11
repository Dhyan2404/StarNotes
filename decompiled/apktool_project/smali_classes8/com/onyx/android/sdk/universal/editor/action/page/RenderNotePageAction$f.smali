.class public final Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->s(Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;->f:Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;->f:Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getNoteRenderSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;->a(Ljava/util/List;)Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;

    move-result-object p0

    return-object p0
.end method
