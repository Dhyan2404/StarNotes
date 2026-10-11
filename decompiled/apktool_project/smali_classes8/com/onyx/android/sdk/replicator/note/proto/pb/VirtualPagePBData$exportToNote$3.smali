.class final Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->exportToNote(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $collectPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $documentId:Ljava/lang/String;

.field final synthetic $exportNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

.field final synthetic $virtualPagePBDocument:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

.field final synthetic this$0:Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$collectPageIdList:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->this$0:Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    iput-object p3, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$exportNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    iput-object p4, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$documentId:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$virtualPagePBDocument:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$collectPageIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->this$0:Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$exportNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$documentId:Ljava/lang/String;

    iget-object v5, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;->$virtualPagePBDocument:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->access$exportToNote$exportVirtualPageListFunc(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;)V

    return-void
.end method
