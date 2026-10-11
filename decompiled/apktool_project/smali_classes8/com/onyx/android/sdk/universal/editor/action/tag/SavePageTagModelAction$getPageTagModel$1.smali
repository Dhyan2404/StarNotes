.class final Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction;->l(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
        "invoke"
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
.field final synthetic $docId:Ljava/lang/String;

.field final synthetic $pageId:Ljava/lang/String;

.field final synthetic $tagId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;->$docId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;->$pageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;->$tagId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;->$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;->$pageId:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;->$tagId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel$Companion;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction$getPageTagModel$1;->invoke()Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    move-result-object p0

    return-object p0
.end method
