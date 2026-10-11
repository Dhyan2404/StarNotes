.class public final Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->v(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)Lkotlin/Pair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;->f:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->access$splitRenderShapes(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;->a(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
