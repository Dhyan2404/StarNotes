.class public final Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->Q0(Ljava/lang/String;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$j;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$j;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addNoteSearchBeanList(Ljava/util/List;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$j;->a(Ljava/util/List;)V

    return-void
.end method
