.class public final Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;->s(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;->f:Ljava/lang/String;

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;)Ljava/lang/Long;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;->f:Ljava/lang/String;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;->g:I

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->updatePageTagModelPageIndex(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$j;->a(Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
