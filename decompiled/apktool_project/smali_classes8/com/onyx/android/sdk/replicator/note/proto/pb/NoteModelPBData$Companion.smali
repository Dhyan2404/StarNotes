.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteModelPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteModelPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u0004J\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0003H\u0002J\u000c\u0010\t\u001a\u00020\u0003*\u00020\u0007H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;",
        "toProtoList",
        "fromProtoList",
        "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;",
        "b",
        "a",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteModelPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteModelPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 4

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSubPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setSubPageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setSource(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getExtraAttributes()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setExtraInfo(Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociateDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setAssociateDate(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setGroupId(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEncryptionType()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setEncryption(Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getAssociationType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/info/Association;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setAssociation(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePenInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPenInfo(Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePenInfo()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->setPenData(Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->setStrokeWidth(F)V

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getEraserWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->setEraserWidth(F)V

    :goto_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStrokeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->setStrokeColor(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCurrentShapeType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->setCurrentShapeType(I)V

    :goto_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNotePageInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNotePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteBackground()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNoteBackground(Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPageNameList()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRichTextPageNameList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setRichTextPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getRemovePageList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setRemovePageList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setDeviceInfo(Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getThumbnailRes()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setThumbnailRes(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getNoteSyncStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNoteSyncStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setType(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPosition(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getFavorite()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setFavorite(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getActiveScene()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setActiveScene(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setVersion(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getCloudNoteSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNotePointSize(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getTagIdList()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion$fromProto$noteModel$1$2;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion$fromProto$noteModel$1$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTagIdList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getStyle()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    if-nez v0, :cond_9

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    :cond_9
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->getOrderIndex()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setOrderIndex(F)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;
    .locals 4

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/db/BaseModel;->Companion:Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setParentUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getSubPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setSubPageName(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setSource(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getExtraInfo()Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setExtraAttributes(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getAssociateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setAssociateDate(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setGroupId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getEncryption()Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;->getDigest()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setDigest(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getAssociation()Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/info/Association;->getAssociationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setAssociationId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->getPenData()Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setNotePenInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNotePageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setNotePageInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNoteBackground()Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setNoteBackground(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPageNameList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setPageNameList(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getRichTextPageNameList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setRichTextPageNameList(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getRemovePageList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setRemovePageList(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getDeviceInfo()Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setDeviceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getThumbnailRes()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setThumbnailRes(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStatus()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNoteSyncStatus()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setNoteSyncStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setType(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->getStrokeWidth()F

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setStrokeWidth(F)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->getEraserWidth()F

    move-result v3

    :cond_4
    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setEraserWidth(F)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->getStrokeColor()I

    move-result v2

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setStrokeColor(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->getCurrentShapeType()I

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setCurrentShapeType(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setPosition(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getFavorite()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setFavorite(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setActiveScene(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getEncryption()Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;->getEncryptionType()I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setEncryptionType(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getAssociation()Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/info/Association;->getAssociationType()I

    move-result v3

    :cond_8
    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setAssociationType(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getVersion()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setVersion(I)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNotePointSize()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setCloudNoteSize(J)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setUserId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setTagIdList(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setStyle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getOrderIndex()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->setOrderIndex(F)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;->getProtoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;->a(Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData$Companion;->b(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;->addAllProto(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/NoteInfoProto$NoteInfoList;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
