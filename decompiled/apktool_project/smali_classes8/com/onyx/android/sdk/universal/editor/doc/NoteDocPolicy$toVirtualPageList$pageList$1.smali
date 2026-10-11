.class final Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$pageList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->H(Ljava/util/List;Ljava/util/Map;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "it",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
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
.field final synthetic $pagePathInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$pageList$1;->$pagePathInfoMap:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$pageList$1;->$pagePathInfoMap:Ljava/util/Map;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPage(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;Ljava/util/Map;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$toVirtualPageList$pageList$1;->invoke(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method
