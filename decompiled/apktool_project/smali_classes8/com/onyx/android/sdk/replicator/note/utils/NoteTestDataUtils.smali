.class public final Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTestDataUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTestDataUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006J\u001a\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000cJ\u001a\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;",
        "",
        "()V",
        "createLinkModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "docId",
        "",
        "pageId",
        "createNoteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "userId",
        "createResourceModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "createShapeModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "createTagModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "createVirtualPageModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "equalTestLinkModel",
        "",
        "src",
        "dst",
        "equalTestResourceModel",
        "equalTestShapeModel",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteTestDataUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTestDataUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createLinkModel(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "docId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setTargetPageId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setTargetDocId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setRemark(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setPath(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setExtra(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setContent(Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/RectF;

    const/high16 p2, 0x40400000    # 3.0f

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v2, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->setBoundingRect(Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public final createNoteModel(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "docId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "userId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setType(I)V

    new-instance v8, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;-><init>(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v1

    invoke-virtual {v8, v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->setStrokeWidth(F)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;-><init>()V

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;->setFillColor(I)V

    invoke-virtual {v8, v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->setPenData(Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V

    invoke-virtual {p0, v8}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPenInfo(Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v2, p2, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->setDefaultPageRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNotePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;-><init>()V

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->setUseDocBKGround(Z)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNoteBackground(Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setRichTextPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setRemovePageList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setSubPageName(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v5, v3}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;->setDigest(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setEncryption(Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    invoke-direct {v1, v3, v2, v5, v3}, Lcom/onyx/android/sdk/replicator/note/data/info/Association;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/data/info/Association;->setAssociationId(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setAssociation(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;-><init>()V

    new-instance v4, Lcom/onyx/android/sdk/base/data/SizeF;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5, v3}, Lcom/onyx/android/sdk/base/data/SizeF;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->setSize(Lcom/onyx/android/sdk/base/data/SizeF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setDeviceInfo(Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;-><init>(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setThumbnailRes(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPosition(I)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTotal(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setSource(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setStatus(I)V

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNotePointSize(J)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNoteSyncStatus(I)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setFavorite(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setAssociateDate(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setVersion(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setActiveScene(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTagIdList(Ljava/util/List;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setOrderIndex(F)V

    return-object p0
.end method

.method public final createResourceModel(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "docId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setRelativePath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    sget-object v2, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->getFILES_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->resourceDataDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setLocalPath(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->setStatus(I)V

    return-object p0
.end method

.method public final createShapeModel(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
    .locals 24
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "docId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pageId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;-><init>()V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setDocumentUniqueId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setPageUniqueId(Ljava/lang/String;)V

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeType(I)V

    new-instance v5, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-object v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x7fff

    const/16 v23, 0x0

    invoke-direct/range {v6 .. v23}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V

    new-instance v5, Landroid/graphics/RectF;

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v5, v8, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeBoundingRect(Landroid/graphics/RectF;)V

    new-instance v5, Lcom/onyx/android/sdk/base/data/MatrixValues;

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-direct {v5, v6}, Lcom/onyx/android/sdk/base/data/MatrixValues;-><init>([F)V

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)V

    new-instance v5, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {v5}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    invoke-virtual {v1, v3, v4}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setOrientation(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v1}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setPointScale(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;-><init>()V

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;-><init>()V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->setLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setLinkIdList(Ljava/util/List;)V

    return-object v2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public final createTagModel(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "docId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setParentId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setContent(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStatus(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setModeType(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setType(I)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setOrderIndex(F)V

    return-object p0
.end method

.method public final createVirtualPageModel(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setOrderIndex(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setStatus(I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setPageSize(Landroid/graphics/RectF;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setPageSizeWithMargin(Landroid/graphics/RectF;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentPageSize(Landroid/graphics/RectF;)V

    const-string p1, "geo_layout"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentType(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentRelativePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentPageId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setRevisionId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final equalTestLinkModel(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-nez p2, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetPageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetDocId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public final equalTestResourceModel(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-nez p2, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->getLocalPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public final equalTestShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-nez p2, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeType()I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeType()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getLinkIdList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getLinkIdList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method
