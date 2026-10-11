.class final Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->c(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/file/Path;",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/nio/file/Path;",
        "it",
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
.field final synthetic $copiedPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

.field final synthetic $dstPathExistMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $oldDstPath:Ljava/lang/String;

.field final synthetic $path:Ljava/nio/file/Path;

.field final synthetic this$0:Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Ljava/util/Map;Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$dstPathExistMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$oldDstPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    iput-object p4, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->this$0:Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    iput-object p5, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$copiedPathMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$path:Ljava/nio/file/Path;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->invoke(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 4
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$dstPathExistMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$oldDstPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$dstPathExistMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$oldDstPath:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getGenerateUniqueContentFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->this$0:Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$copiedPathMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;->$path:Ljava/nio/file/Path;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->access$copyToUniqueFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    :cond_2
    return-object p1
.end method
