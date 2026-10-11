.class final Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkShapeExist$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkShapeExist$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "invoke",
        "(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkShapeExist$1$1;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)Ljava/lang/Boolean;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkShapeExist$1$1;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeListQuery(Ljava/lang/String;Ljava/lang/Integer;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    .line 6
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkShapeExist$1$1;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getShapeIdList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const-string v3, "uniqueId"

    .line 7
    invoke-virtual {v2, v3, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkShapeExist$1$1;->invoke(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
