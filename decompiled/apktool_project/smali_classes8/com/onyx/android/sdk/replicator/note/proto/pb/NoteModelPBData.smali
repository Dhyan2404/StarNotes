.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;
.super Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\"\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002R\"\u0010\u0011\u001a\u00020\u000b8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "",
        "exportToNote",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/NoteInfoPBDocument;",
        "infoPBDocument",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "a",
        "",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "<init>",
        "()V",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/proto/doc/NoteInfoPBDocument;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 4

    const-class p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p2, "save note to pb null note"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setFavorite(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadParentNotes(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;->toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;-><init>()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object v2

    const-string v3, "note_info"

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setArgs(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setData(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->save()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "documentId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", note model saveToPB count: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exportToNote(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/NoteInfoPBDocument;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/NoteInfoPBDocument;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setPbDirPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getPageIdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->addAll(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setEncryption(Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;->a(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/proto/doc/NoteInfoPBDocument;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;->a:I

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;->a:I

    return-void
.end method
