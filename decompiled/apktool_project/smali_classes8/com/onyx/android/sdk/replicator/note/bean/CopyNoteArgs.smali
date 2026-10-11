.class public final Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyNoteArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1855#2,2:241\n1855#2,2:243\n1477#2:245\n1502#2,3:246\n1505#2,3:256\n1855#2,2:261\n1603#2,9:263\n1855#2:272\n1856#2:274\n1612#2:275\n372#3,7:249\n215#4,2:259\n1#5:273\n*S KotlinDebug\n*F\n+ 1 CopyNoteArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs\n*L\n137#1:241,2\n138#1:243,2\n141#1:245\n141#1:246,3\n141#1:256,3\n159#1:261,2\n177#1:263,9\n177#1:272\n177#1:274\n177#1:275\n141#1:249,7\n142#1:259,2\n177#1:273\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u000e\u0010l\u001a\u00020j2\u0006\u0010k\u001a\u00020RJ\u0016\u0010m\u001a\u00020j2\u0006\u0010n\u001a\u00020\u00132\u0006\u0010o\u001a\u00020\u0013J\u0018\u0010p\u001a\u00020j2\u0006\u0010k\u001a\u00020R2\u0006\u0010q\u001a\u00020rH\u0002J\u0010\u0010s\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u0010\u0010t\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u0018\u0010u\u001a\u00020j2\u0006\u0010k\u001a\u00020R2\u0006\u0010v\u001a\u00020\u0000H\u0002J\u0018\u0010w\u001a\u00020j2\u0006\u0010k\u001a\u00020R2\u0006\u0010v\u001a\u00020\u0000H\u0002J\u0010\u0010x\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u000e\u0010y\u001a\u00020\u00132\u0006\u0010z\u001a\u00020\u0013J\u001c\u0010{\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010|2\u000c\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u00130|J\u000e\u0010~\u001a\u00020\u00132\u0006\u0010\u007f\u001a\u00020\u0013J\u0010\u0010\u0080\u0001\u001a\u00020\u00132\u0007\u0010\u0081\u0001\u001a\u00020\u0013J\u001e\u0010\u0082\u0001\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010|2\r\u0010\u0083\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00130|J\u0011\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00132\u0006\u0010z\u001a\u00020\u0013J\u0014\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00132\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0013J\u0011\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00132\u0006\u0010n\u001a\u00020\u0013J\u0007\u0010\u0088\u0001\u001a\u00020\u0006J\u0007\u0010\u0089\u0001\u001a\u00020jJ\u0011\u0010\u008a\u0001\u001a\u00020j2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010,\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010.\"\u0004\u00083\u00100R\u001c\u00104\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010.\"\u0004\u00086\u00100R\u001c\u00107\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010.\"\u0004\u00089\u00100R \u0010:\u001a\u0008\u0012\u0004\u0012\u00020<0;X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001a\u0010G\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0008\"\u0004\u0008I\u0010\nR&\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u0016\"\u0004\u0008L\u0010\u0018R&\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130NX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u0016\"\u0004\u0008P\u0010\u0018R \u0010Q\u001a\u0008\u0012\u0004\u0012\u00020R0;X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010>\"\u0004\u0008T\u0010@R(\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010\u0016\"\u0004\u0008W\u0010\u0018R\u001d\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010\u0016R\u001a\u0010Z\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010.\"\u0004\u0008\\\u00100R\u001a\u0010]\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010.\"\u0004\u0008_\u00100R&\u0010`\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010\u0016\"\u0004\u0008b\u0010\u0018R \u0010c\u001a\u0008\u0012\u0004\u0012\u00020R0;X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010>\"\u0004\u0008e\u0010@R\u001c\u0010f\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010.\"\u0004\u0008h\u00100\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "",
        "()V",
        "abort",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "copyGlobalPage",
        "",
        "getCopyGlobalPage",
        "()Z",
        "setCopyGlobalPage",
        "(Z)V",
        "copyPageRect",
        "Landroid/graphics/RectF;",
        "getCopyPageRect",
        "()Landroid/graphics/RectF;",
        "setCopyPageRect",
        "(Landroid/graphics/RectF;)V",
        "copyPageScaleMap",
        "",
        "",
        "",
        "getCopyPageScaleMap",
        "()Ljava/util/Map;",
        "setCopyPageScaleMap",
        "(Ljava/util/Map;)V",
        "copyToPageIndex",
        "",
        "getCopyToPageIndex",
        "()Ljava/lang/Integer;",
        "setCopyToPageIndex",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "docNote",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getDocNote",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "setDocNote",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "dstAssociation",
        "Lcom/onyx/android/sdk/replicator/note/data/info/Association;",
        "getDstAssociation",
        "()Lcom/onyx/android/sdk/replicator/note/data/info/Association;",
        "setDstAssociation",
        "(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V",
        "dstDirFilePath",
        "getDstDirFilePath",
        "()Ljava/lang/String;",
        "setDstDirFilePath",
        "(Ljava/lang/String;)V",
        "dstDocId",
        "getDstDocId",
        "setDstDocId",
        "dstGroupId",
        "getDstGroupId",
        "setDstGroupId",
        "dstParentId",
        "getDstParentId",
        "setDstParentId",
        "excerptCollectionList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "getExcerptCollectionList",
        "()Ljava/util/List;",
        "setExcerptCollectionList",
        "(Ljava/util/List;)V",
        "extraInfoBean",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;",
        "getExtraInfoBean",
        "()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;",
        "setExtraInfoBean",
        "(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V",
        "generateUniqueContentFile",
        "getGenerateUniqueContentFile",
        "setGenerateUniqueContentFile",
        "linkIdCopyMap",
        "getLinkIdCopyMap",
        "setLinkIdCopyMap",
        "pageIdCopyMap",
        "",
        "getPageIdCopyMap",
        "setPageIdCopyMap",
        "pendingLinkShapeModelList",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "getPendingLinkShapeModelList",
        "setPendingLinkShapeModelList",
        "resourceIdCopyMap",
        "getResourceIdCopyMap",
        "setResourceIdCopyMap",
        "shapeIdCopyMap",
        "getShapeIdCopyMap",
        "srcDirFilePath",
        "getSrcDirFilePath",
        "setSrcDirFilePath",
        "srcDocId",
        "getSrcDocId",
        "setSrcDocId",
        "tagIdCopyMap",
        "getTagIdCopyMap",
        "setTagIdCopyMap",
        "updateConnectionShapeModelList",
        "getUpdateConnectionShapeModelList",
        "setUpdateConnectionShapeModelList",
        "userId",
        "getUserId",
        "setUserId",
        "addConnectDataShapeModel",
        "",
        "shapeModel",
        "addPendingShapeModel",
        "addShapeId",
        "srcShapeId",
        "dstShapeId",
        "addShapeLinkBeanShapeModel",
        "linkBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "copyExcerptShapeData",
        "copyLinkShapeData",
        "copyLinkShapeShapeListData",
        "copyNoteArgs",
        "copyShapeConnectionData",
        "copyShapeModelExtraData",
        "ensureCopyLinkId",
        "srcLinkId",
        "ensureCopyLinkIdList",
        "",
        "srcLinkIds",
        "ensureCopyResourceId",
        "srcResourceId",
        "ensureCopyTagId",
        "srcTagId",
        "ensureCopyTagIdList",
        "srcTagIds",
        "getCopyLinkId",
        "getCopyPageId",
        "srcPageId",
        "getCopyShapeId",
        "isAbort",
        "setAbort",
        "updateAndSavePendingShapeModels",
        "noteProviderHolder",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
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
        "SMAP\nCopyNoteArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1855#2,2:241\n1855#2,2:243\n1477#2:245\n1502#2,3:246\n1505#2,3:256\n1855#2,2:261\n1603#2,9:263\n1855#2:272\n1856#2:274\n1612#2:275\n372#3,7:249\n215#4,2:259\n1#5:273\n*S KotlinDebug\n*F\n+ 1 CopyNoteArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs\n*L\n137#1:241,2\n138#1:243,2\n141#1:245\n141#1:246,3\n141#1:256,3\n159#1:261,2\n177#1:263,9\n177#1:272\n177#1:274\n177#1:275\n141#1:249,7\n142#1:259,2\n177#1:273\n*E\n"
    }
.end annotation


# instance fields
.field private final abort:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private copyGlobalPage:Z

.field private copyPageRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private copyPageScaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private copyToPageIndex:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private docNote:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dstAssociation:Lcom/onyx/android/sdk/replicator/note/data/info/Association;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dstDirFilePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dstDocId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dstGroupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dstParentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private excerptCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private extraInfoBean:Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private generateUniqueContentFile:Z

.field private linkIdCopyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageIdCopyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingLinkShapeModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resourceIdCopyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shapeIdCopyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private srcDirFilePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private srcDocId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tagIdCopyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private updateConnectionShapeModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->srcDocId:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstDocId:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->srcDirFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstDirFilePath:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->abort:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->excerptCollectionList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pageIdCopyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->shapeIdCopyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->resourceIdCopyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->tagIdCopyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->linkIdCopyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->updateConnectionShapeModelList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pendingLinkShapeModelList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyPageScaleMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->generateUniqueContentFile:Z

    return-void
.end method

.method private final addConnectDataShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->hasShapeConnectData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->updateConnectionShapeModelList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final addShapeLinkBeanShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getShapeIdList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pendingLinkShapeModelList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final copyExcerptShapeData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V
    .locals 2

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt;->getExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getImgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->ensureCopyResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setImgId(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/extenstion/ShapeModelOptionsKt;->setExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    :cond_0
    return-void
.end method

.method private final copyLinkShapeData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V
    .locals 13

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getText()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x27dabd07

    const-string v5, ""

    if-eq v3, v4, :cond_10

    const v4, 0x24a7f2

    const/4 v6, 0x0

    if-eq v3, v4, :cond_8

    const p0, 0x3bba3b6

    if-eq v3, p0, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string p0, "AUDIO"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {v0, p0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_5

    move-object v8, v5

    goto :goto_0

    :cond_5
    move-object v8, v6

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->setAudioPath(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setValue(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setDocumentId(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    const-string v3, "NOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->srcDocId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    move-object v3, v6

    :goto_3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setDocumentId(Ljava/lang/String;)V

    :goto_4
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pageIdCopyMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getPageId()Ljava/lang/String;

    move-result-object v6

    :cond_c
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setPageId(Ljava/lang/String;)V

    :cond_e
    :goto_5
    invoke-direct {p0, p1, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->addShapeLinkBeanShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    :cond_f
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setText(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    const-string v3, "PAGE_NUMBER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pageIdCopyMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_6

    :cond_12
    move-object v5, v2

    :goto_6
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setValue(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setText(Ljava/lang/String;)V

    :cond_13
    :goto_7
    return-void
.end method

.method private final copyLinkShapeShapeListData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getText()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOTE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getShapeIdList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->shapeIdCopyMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->setShapeIdList(Ljava/util/List;)V

    :goto_1
    sget-object p2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setText(Ljava/lang/String;)V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method private final copyShapeConnectionData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getShapeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyShapeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setShapeId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setPageId(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;->getReferenceShapeBeanList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getShapeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyShapeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setShapeId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v0

    :cond_4
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setPageId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final copyShapeModelExtraData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyExcerptShapeData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeType()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyLinkShapeData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addPendingShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->addConnectDataShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyShapeModelExtraData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V

    return-void
.end method

.method public final addShapeId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcShapeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstShapeId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->shapeIdCopyMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ensureCopyLinkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "srcLinkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->linkIdCopyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->linkIdCopyMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public final ensureCopyLinkIdList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "srcLinkIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->ensureCopyLinkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final ensureCopyResourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "srcResourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->resourceIdCopyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/ResourceCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/ResourceCopyUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/utils/ResourceCopyUtils;->copyResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->resourceIdCopyMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public final ensureCopyTagId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "srcTagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->tagIdCopyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->tagIdCopyMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public final ensureCopyTagIdList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "srcTagIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->ensureCopyTagId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getCopyGlobalPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyGlobalPage:Z

    return p0
.end method

.method public final getCopyLinkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "srcLinkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->linkIdCopyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getCopyPageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pageIdCopyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getCopyPageRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyPageRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCopyPageScaleMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyPageScaleMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getCopyShapeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "srcShapeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->shapeIdCopyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getCopyToPageIndex()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyToPageIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDocNote()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->docNote:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public final getDstAssociation()Lcom/onyx/android/sdk/replicator/note/data/info/Association;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstAssociation:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    return-object p0
.end method

.method public final getDstDirFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstDirFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getDstDocId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstDocId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDstGroupId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDstParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstParentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getExcerptCollectionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->excerptCollectionList:Ljava/util/List;

    return-object p0
.end method

.method public final getExtraInfoBean()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->extraInfoBean:Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    return-object p0
.end method

.method public final getGenerateUniqueContentFile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->generateUniqueContentFile:Z

    return p0
.end method

.method public final getLinkIdCopyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->linkIdCopyMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getPageIdCopyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pageIdCopyMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getPendingLinkShapeModelList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pendingLinkShapeModelList:Ljava/util/List;

    return-object p0
.end method

.method public final getResourceIdCopyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->resourceIdCopyMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getShapeIdCopyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->shapeIdCopyMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSrcDirFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->srcDirFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getSrcDocId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->srcDocId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTagIdCopyMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->tagIdCopyMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getUpdateConnectionShapeModelList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->updateConnectionShapeModelList:Ljava/util/List;

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final isAbort()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->abort:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final setAbort()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->abort:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setCopyGlobalPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyGlobalPage:Z

    return-void
.end method

.method public final setCopyPageRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyPageRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setCopyPageScaleMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyPageScaleMap:Ljava/util/Map;

    return-void
.end method

.method public final setCopyToPageIndex(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyToPageIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setDocNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->docNote:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public final setDstAssociation(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/info/Association;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstAssociation:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    return-void
.end method

.method public final setDstDirFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstDirFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setDstDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstDocId:Ljava/lang/String;

    return-void
.end method

.method public final setDstGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstGroupId:Ljava/lang/String;

    return-void
.end method

.method public final setDstParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstParentId:Ljava/lang/String;

    return-void
.end method

.method public final setExcerptCollectionList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->excerptCollectionList:Ljava/util/List;

    return-void
.end method

.method public final setExtraInfoBean(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->extraInfoBean:Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    return-void
.end method

.method public final setGenerateUniqueContentFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->generateUniqueContentFile:Z

    return-void
.end method

.method public final setLinkIdCopyMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->linkIdCopyMap:Ljava/util/Map;

    return-void
.end method

.method public final setPageIdCopyMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pageIdCopyMap:Ljava/util/Map;

    return-void
.end method

.method public final setPendingLinkShapeModelList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pendingLinkShapeModelList:Ljava/util/List;

    return-void
.end method

.method public final setResourceIdCopyMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->resourceIdCopyMap:Ljava/util/Map;

    return-void
.end method

.method public final setSrcDirFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->srcDirFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setSrcDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->srcDocId:Ljava/lang/String;

    return-void
.end method

.method public final setTagIdCopyMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->tagIdCopyMap:Ljava/util/Map;

    return-void
.end method

.method public final setUpdateConnectionShapeModelList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->updateConnectionShapeModelList:Ljava/util/List;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->userId:Ljava/lang/String;

    return-void
.end method

.method public final updateAndSavePendingShapeModels(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteProviderHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->updateConnectionShapeModelList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-direct {p0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyShapeConnectionData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pendingLinkShapeModelList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-direct {p0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->copyLinkShapeShapeListData(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->updateConnectionShapeModelList:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pendingLinkShapeModelList:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->mergeList([Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->dstDocId:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;->saveToShapeFile(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->updateConnectionShapeModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->pendingLinkShapeModelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
