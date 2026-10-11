.class public final Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->n()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "click_galaxy_noteEditor_page_0002"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$i;->a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    return-void
.end method
