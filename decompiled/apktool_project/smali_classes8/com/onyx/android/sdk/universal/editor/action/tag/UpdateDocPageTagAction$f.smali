.class public final Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;->o(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            "Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->e:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->f:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->h:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->e:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->f:Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->h:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->purgeDocPageTag(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction$f;->a(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
