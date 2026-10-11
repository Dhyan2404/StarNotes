.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00082\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 G2\u00020\u00012\u00020\u0002:\u0001GB\u009f\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010@\u001a\u00020\u0000H\u0014J\u0008\u0010A\u001a\u00020\tH\u0007J\u0008\u0010B\u001a\u00020\tH\u0007J\u0006\u0010C\u001a\u00020\u0004J\u000e\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0015\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001d\"\u0004\u0008!\u0010\u001fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0019\"\u0004\u0008#\u0010\u001bR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0019\"\u0004\u0008)\u0010\u001bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0019\"\u0004\u0008+\u0010\u001bR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0019\"\u0004\u00081\u0010\u001bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0019\"\u0004\u00083\u0010\u001bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u001d\"\u0004\u00089\u0010\u001fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u0019\"\u0004\u0008?\u0010\u001b\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "parentId",
        "",
        "localFilePath",
        "cloudFilePath",
        "md5",
        "dir",
        "",
        "size",
        "",
        "name",
        "syncStatus",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;",
        "provider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "mediaCategory",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
        "thumbnail",
        "accountId",
        "childFolderCount",
        "childFileCount",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJ)V",
        "getAccountId",
        "()Ljava/lang/String;",
        "setAccountId",
        "(Ljava/lang/String;)V",
        "getChildFileCount",
        "()J",
        "setChildFileCount",
        "(J)V",
        "getChildFolderCount",
        "setChildFolderCount",
        "getCloudFilePath",
        "setCloudFilePath",
        "getDir",
        "()Z",
        "setDir",
        "(Z)V",
        "getLocalFilePath",
        "setLocalFilePath",
        "getMd5",
        "setMd5",
        "getMediaCategory",
        "()Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
        "setMediaCategory",
        "(Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;)V",
        "getName",
        "setName",
        "getParentId",
        "setParentId",
        "getProvider",
        "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "setProvider",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V",
        "getSize",
        "setSize",
        "getSyncStatus",
        "()Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;",
        "setSyncStatus",
        "(Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;)V",
        "getThumbnail",
        "setThumbnail",
        "clone",
        "isFileSizeChanged",
        "isLocalFileChanged",
        "localFileString",
        "updateModelField",
        "",
        "other",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private accountId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient childFileCount:J

.field private transient childFolderCount:J

.field private cloudFilePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dir:Z

.field private localFilePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mediaCategory:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:J

.field private syncStatus:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x3fff

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    const-string v4, "syncStatus"

    invoke-static {p9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "provider"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mediaCategory"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    move-object v4, p1

    .line 7
    iput-object v4, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->parentId:Ljava/lang/String;

    move-object v4, p2

    .line 8
    iput-object v4, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    move-object v4, p3

    .line 9
    iput-object v4, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->cloudFilePath:Ljava/lang/String;

    move-object v4, p4

    .line 10
    iput-object v4, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->md5:Ljava/lang/String;

    move v4, p5

    .line 11
    iput-boolean v4, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->dir:Z

    move-wide v4, p6

    .line 12
    iput-wide v4, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->size:J

    move-object v4, p8

    .line 13
    iput-object v4, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->name:Ljava/lang/String;

    .line 14
    iput-object v1, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->syncStatus:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    .line 15
    iput-object v2, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 16
    iput-object v3, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->mediaCategory:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-object/from16 v1, p12

    .line 17
    iput-object v1, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->thumbnail:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 18
    iput-object v1, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->accountId:Ljava/lang/String;

    move-wide/from16 v1, p14

    .line 19
    iput-wide v1, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFolderCount:J

    move-wide/from16 v1, p16

    .line 20
    iput-wide v1, v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFileCount:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const-wide/16 v10, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v10, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    .line 2
    sget-object v12, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    .line 3
    sget-object v13, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    .line 4
    sget-object v14, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Unknown:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p12

    :goto_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v2, p13

    :goto_b
    and-int/lit16 v8, v0, 0x1000

    if-eqz v8, :cond_c

    const-wide/16 v8, 0x0

    goto :goto_c

    :cond_c
    move-wide/from16 v8, p14

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-wide/16 v16, 0x0

    goto :goto_d

    :cond_d
    move-wide/from16 v16, p16

    :goto_d
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v10

    move-object/from16 p8, v7

    move-object/from16 p9, v12

    move-object/from16 p10, v13

    move-object/from16 p11, v14

    move-object/from16 p12, v15

    move-object/from16 p13, v2

    move-wide/from16 p14, v8

    move-wide/from16 p16, v16

    .line 5
    invoke-direct/range {p0 .. p17}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->clone()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public final getChildFileCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFileCount:J

    return-wide v0
.end method

.method public final getChildFolderCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFolderCount:J

    return-wide v0
.end method

.method public final getCloudFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->cloudFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getDir()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->dir:Z

    return p0
.end method

.method public final getLocalFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaCategory()Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->mediaCategory:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->size:J

    return-wide v0
.end method

.method public final getSyncStatus()Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->syncStatus:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    return-object p0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->thumbnail:Ljava/lang/String;

    return-object p0
.end method

.method public final isFileSizeChanged()Z
    .locals 6
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->dir:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->size:J

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final isLocalFileChanged()Z
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->size:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final localFileString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->accountId:Ljava/lang/String;

    return-void
.end method

.method public final setChildFileCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFileCount:J

    return-void
.end method

.method public final setChildFolderCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFolderCount:J

    return-void
.end method

.method public final setCloudFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->cloudFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setDir(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->dir:Z

    return-void
.end method

.method public final setLocalFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public final setMediaCategory(Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->mediaCategory:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->name:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->size:J

    return-void
.end method

.method public final setSyncStatus(Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->syncStatus:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    return-void
.end method

.method public final setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public final updateModelField(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getDbId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setDbId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->parentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->parentId:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFilePath:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->cloudFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->cloudFilePath:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->md5:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->dir:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->dir:Z

    iget-wide v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->size:J

    iput-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->size:J

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->syncStatus:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->syncStatus:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->mediaCategory:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->mediaCategory:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->thumbnail:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->thumbnail:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->accountId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->accountId:Ljava/lang/String;

    iget-wide v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFolderCount:J

    iput-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFolderCount:J

    iget-wide v0, p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFileCount:J

    iput-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->childFileCount:J

    return-void
.end method
