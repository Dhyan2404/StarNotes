.class final Lcom/onyx/android/sdk/note/common/document/page/NotePage$pointLoader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/document/page/NotePage;-><init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/note/common/document/page/NotePageBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/note/common/document/page/NotePage;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage$pointLoader$2;->this$0:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage$pointLoader$2;->this$0:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v3, Lcom/onyx/android/sdk/data/common/path/PointPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PointPaths;

    iget-object v4, p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage$pointLoader$2;->this$0:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/common/path/PointPaths;->appDocPointDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage$pointLoader$2;->this$0:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage$pointLoader$2;->invoke()Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;

    move-result-object p0

    return-object p0
.end method
