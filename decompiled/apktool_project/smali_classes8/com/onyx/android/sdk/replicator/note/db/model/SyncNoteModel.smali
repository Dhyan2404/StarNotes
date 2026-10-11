.class public Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u0098\u00012\u00020\u0001:\u0002\u0098\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0087\u0001\u001a\u00030\u0088\u0001H\u0007J\u0008\u0010\u0089\u0001\u001a\u00030\u0088\u0001J\u0013\u0010\u008a\u0001\u001a\u00030\u0088\u00012\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0000J\u0008\u0010\u008c\u0001\u001a\u00030\u0088\u0001J\u0008\u0010\u008d\u0001\u001a\u00030\u0088\u0001J\u0008\u0010\u008e\u0001\u001a\u00030\u0088\u0001J\u0008\u0010\u008f\u0001\u001a\u00030\u0088\u0001J\u0008\u0010\u0090\u0001\u001a\u00030\u0088\u0001J\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001J\t\u0010\u0093\u0001\u001a\u00020\nH\u0016J\u0008\u0010\u0094\u0001\u001a\u00030\u0092\u0001J\u0011\u0010\u0095\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u0000J\u0011\u0010\u0097\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u008b\u0001\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001c\u0010*\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000c\"\u0004\u0008,\u0010\u000eR\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0006\"\u0004\u0008A\u0010\u0008R\u001a\u0010B\u001a\u00020CX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001c\u0010H\u001a\u0004\u0018\u00010IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001c\u0010N\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u000c\"\u0004\u0008P\u0010\u000eR\u001c\u0010Q\u001a\u0004\u0018\u00010RX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u001a\u0010W\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010\u0006\"\u0004\u0008Y\u0010\u0008R\u001c\u0010Z\u001a\u0004\u0018\u00010IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010K\"\u0004\u0008\\\u0010MR\u001c\u0010]\u001a\u0004\u0018\u00010IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010K\"\u0004\u0008_\u0010MR\u001c\u0010`\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010\u000c\"\u0004\u0008b\u0010\u000eR\u001a\u0010c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010\u0006\"\u0004\u0008e\u0010\u0008R\u001a\u0010f\u001a\u00020gX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR\u001c\u0010l\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u0010\u000c\"\u0004\u0008n\u0010\u000eR \u0010o\u001a\u0008\u0012\u0004\u0012\u00020\n0pX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u0010r\"\u0004\u0008s\u0010tR\u001c\u0010u\u001a\u0004\u0018\u00010vX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\u001c\u0010{\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u0010\u000c\"\u0004\u0008}\u0010\u000eR\u001b\u0010~\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u0010\u0006\"\u0005\u0008\u0080\u0001\u0010\u0008R\u001d\u0010\u0081\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010\u0006\"\u0005\u0008\u0083\u0001\u0010\u0008R\u001d\u0010\u0084\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0085\u0001\u0010\u0006\"\u0005\u0008\u0086\u0001\u0010\u0008\u00a8\u0006\u0099\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "activeScene",
        "",
        "getActiveScene",
        "()I",
        "setActiveScene",
        "(I)V",
        "associateDate",
        "",
        "getAssociateDate",
        "()Ljava/lang/String;",
        "setAssociateDate",
        "(Ljava/lang/String;)V",
        "association",
        "Lcom/onyx/android/sdk/replicator/note/data/info/Association;",
        "getAssociation",
        "()Lcom/onyx/android/sdk/replicator/note/data/info/Association;",
        "setAssociation",
        "(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V",
        "deviceInfo",
        "Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;",
        "getDeviceInfo",
        "()Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;",
        "setDeviceInfo",
        "(Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;)V",
        "encryption",
        "Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;",
        "getEncryption",
        "()Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;",
        "setEncryption",
        "(Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;)V",
        "extraInfo",
        "Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;",
        "getExtraInfo",
        "()Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;",
        "setExtraInfo",
        "(Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;)V",
        "favorite",
        "getFavorite",
        "setFavorite",
        "groupId",
        "getGroupId",
        "setGroupId",
        "noteBackground",
        "Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;",
        "getNoteBackground",
        "()Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;",
        "setNoteBackground",
        "(Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;)V",
        "notePageInfo",
        "Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;",
        "getNotePageInfo",
        "()Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;",
        "setNotePageInfo",
        "(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;)V",
        "notePointSize",
        "",
        "getNotePointSize",
        "()J",
        "setNotePointSize",
        "(J)V",
        "noteSyncStatus",
        "getNoteSyncStatus",
        "setNoteSyncStatus",
        "orderIndex",
        "",
        "getOrderIndex",
        "()F",
        "setOrderIndex",
        "(F)V",
        "pageNameList",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;",
        "getPageNameList",
        "()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;",
        "setPageNameList",
        "(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V",
        "parentUniqueId",
        "getParentUniqueId",
        "setParentUniqueId",
        "penInfo",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;",
        "getPenInfo",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;",
        "setPenInfo",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;)V",
        "position",
        "getPosition",
        "setPosition",
        "removePageList",
        "getRemovePageList",
        "setRemovePageList",
        "richTextPageNameList",
        "getRichTextPageNameList",
        "setRichTextPageNameList",
        "source",
        "getSource",
        "setSource",
        "status",
        "getStatus",
        "setStatus",
        "style",
        "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "getStyle",
        "()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "setStyle",
        "(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V",
        "subPageName",
        "getSubPageName",
        "setSubPageName",
        "tagIdList",
        "",
        "getTagIdList",
        "()Ljava/util/List;",
        "setTagIdList",
        "(Ljava/util/List;)V",
        "thumbnailRes",
        "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;",
        "getThumbnailRes",
        "()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;",
        "setThumbnailRes",
        "(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V",
        "title",
        "getTitle",
        "setTitle",
        "total",
        "getTotal",
        "setTotal",
        "type",
        "getType",
        "setType",
        "version",
        "getVersion",
        "setVersion",
        "hasEncryption",
        "",
        "isDeleted",
        "isDirty",
        "noteModel",
        "isDocument",
        "isEnabled",
        "isEnabledOrDeleted",
        "isForceDeleted",
        "isLibrary",
        "resetEncryption",
        "",
        "toString",
        "toggleFavorite",
        "updateModelField",
        "other",
        "updateSelectField",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_DOCUMENT:I = 0x1

.field public static final TYPE_LIBRARY:I


# instance fields
.field private activeScene:I

.field private associateDate:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private association:Lcom/onyx/android/sdk/replicator/note/data/info/Association;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private deviceInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extraInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private favorite:I

.field private groupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private noteBackground:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private notePageInfo:Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private notePointSize:J

.field private noteSyncStatus:I

.field private orderIndex:F

.field private pageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private penInfo:Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private position:I

.field private removePageList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private richTextPageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subPageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private total:I

.field private type:I

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePointSize:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->tagIdList:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->orderIndex:F

    return-void
.end method


# virtual methods
.method public final getActiveScene()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    return p0
.end method

.method public final getAssociateDate()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->associateDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getAssociation()Lcom/onyx/android/sdk/replicator/note/data/info/Association;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->association:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    return-object p0
.end method

.method public final getDeviceInfo()Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->deviceInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    return-object p0
.end method

.method public final getEncryption()Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    return-object p0
.end method

.method public final getExtraInfo()Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->extraInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;

    return-object p0
.end method

.method public final getFavorite()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->favorite:I

    return p0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public final getNoteBackground()Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteBackground:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    return-object p0
.end method

.method public final getNotePageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePageInfo:Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    return-object p0
.end method

.method public final getNotePointSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePointSize:J

    return-wide v0
.end method

.method public final getNoteSyncStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteSyncStatus:I

    return p0
.end method

.method public final getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->orderIndex:F

    return p0
.end method

.method public final getPageNameList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->pageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    return-object p0
.end method

.method public final getParentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPenInfo()Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->penInfo:Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    return-object p0
.end method

.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->position:I

    return p0
.end method

.method public final getRemovePageList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->removePageList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    return-object p0
.end method

.method public final getRichTextPageNameList()Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->richTextPageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    return-object p0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    return p0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    return-object p0
.end method

.method public final getSubPageName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->subPageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTagIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->tagIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getThumbnailRes()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotal()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->total:I

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    return p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->version:I

    return p0
.end method

.method public final hasEncryption()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;->getEncryptionType()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final isDeleted()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDirty(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    iget v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->position:I

    iget v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->position:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    iget v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    iget-object v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    iget-object v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    iget-object v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePageInfo:Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    iget-object v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePageInfo:Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->pageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    iget-object v1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->pageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteBackground:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteBackground:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final isDocument()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnabledOrDeleted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDeleted()Z

    move-result p0

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

.method public final isForceDeleted()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLibrary()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetEncryption()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    return-void
.end method

.method public final setActiveScene(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    return-void
.end method

.method public final setAssociateDate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->associateDate:Ljava/lang/String;

    return-void
.end method

.method public final setAssociation(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/info/Association;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->association:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    return-void
.end method

.method public final setDeviceInfo(Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->deviceInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    return-void
.end method

.method public final setEncryption(Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    return-void
.end method

.method public final setExtraInfo(Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->extraInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;

    return-void
.end method

.method public final setFavorite(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->favorite:I

    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->groupId:Ljava/lang/String;

    return-void
.end method

.method public final setNoteBackground(Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteBackground:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    return-void
.end method

.method public final setNotePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePageInfo:Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    return-void
.end method

.method public final setNotePointSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePointSize:J

    return-void
.end method

.method public final setNoteSyncStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteSyncStatus:I

    return-void
.end method

.method public final setOrderIndex(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->orderIndex:F

    return-void
.end method

.method public final setPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->pageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    return-void
.end method

.method public final setParentUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setPenInfo(Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->penInfo:Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->position:I

    return-void
.end method

.method public final setRemovePageList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->removePageList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    return-void
.end method

.method public final setRichTextPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->richTextPageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->source:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    return-void
.end method

.method public final setSubPageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->subPageName:Ljava/lang/String;

    return-void
.end method

.method public final setTagIdList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->tagIdList:Ljava/util/List;

    return-void
.end method

.method public final setThumbnailRes(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->total:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Library="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " CreateAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_2()Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toggleFavorite()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->favorite:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->favorite:I

    return-void
.end method

.method public final updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
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

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->penInfo:Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->penInfo:Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePageInfo:Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePageInfo:Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteBackground:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteBackground:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->pageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->pageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->richTextPageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->richTextPageNameList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->removePageList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->removePageList:Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->subPageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->subPageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->association:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->association:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->deviceInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->deviceInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->extraInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->extraInfo:Lcom/onyx/android/sdk/replicator/note/data/info/NoteExtraInfo;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->position:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->position:I

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->total:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->total:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->source:Ljava/lang/String;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    iget-wide v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePointSize:J

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->notePointSize:J

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteSyncStatus:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->noteSyncStatus:I

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->favorite:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->favorite:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->associateDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->associateDate:Ljava/lang/String;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->version:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->version:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->groupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->groupId:Ljava/lang/String;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->tagIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->tagIdList:Ljava/util/List;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->orderIndex:F

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->orderIndex:F

    return-void
.end method

.method public final updateSelectField(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModel"

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

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->parentUniqueId:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->title:Ljava/lang/String;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->type:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->association:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->association:Lcom/onyx/android/sdk/replicator/note/data/info/Association;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->thumbnailRes:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->status:I

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->activeScene:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->tagIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->tagIdList:Ljava/util/List;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->orderIndex:F

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->orderIndex:F

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->encryption:Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    return-void
.end method
