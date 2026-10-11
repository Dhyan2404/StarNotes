.class public final Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;,
        Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$LinkStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008/\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 H2\u00020\u0001:\u0002HIB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010?\u001a\u00020@J\n\u0010A\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010B\u001a\u00020CH\u0007J\u0008\u0010D\u001a\u00020CH\u0007J\u0008\u0010E\u001a\u0004\u0018\u00010\nJ\u0012\u0010F\u001a\u00020\u00002\u0008\u0010G\u001a\u0004\u0018\u00010\u0004H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000eR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\u001c\u0010!\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000eR\u001c\u0010$\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000c\"\u0004\u0008&\u0010\u000eR\u001a\u0010\'\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0012\"\u0004\u0008)\u0010\u0014R\u001c\u0010*\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000c\"\u0004\u0008,\u0010\u000eR\u001a\u0010-\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u000c\"\u0004\u0008/\u0010\u000eR\u001c\u00100\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u000c\"\u0004\u00082\u0010\u000eR\u001a\u00103\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0012\"\u0004\u00085\u0010\u0014R\u001c\u00106\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u000c\"\u0004\u00088\u0010\u000eR\u001a\u00109\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u000c\"\u0004\u0008;\u0010\u000eR\u001c\u0010<\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u000c\"\u0004\u0008>\u0010\u000e\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "boundingRect",
        "Landroid/graphics/RectF;",
        "getBoundingRect",
        "()Landroid/graphics/RectF;",
        "setBoundingRect",
        "(Landroid/graphics/RectF;)V",
        "content",
        "",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
        "displayStyle",
        "",
        "getDisplayStyle",
        "()I",
        "setDisplayStyle",
        "(I)V",
        "documentId",
        "getDocumentId",
        "setDocumentId",
        "extra",
        "getExtra",
        "setExtra",
        "pageUniqueId",
        "getPageUniqueId",
        "setPageUniqueId",
        "path",
        "getPath",
        "setPath",
        "remark",
        "getRemark",
        "setRemark",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "status",
        "getStatus",
        "setStatus",
        "targetDocId",
        "getTargetDocId",
        "setTargetDocId",
        "targetObjId",
        "getTargetObjId",
        "setTargetObjId",
        "targetPageId",
        "getTargetPageId",
        "setTargetPageId",
        "targetPageIndex",
        "getTargetPageIndex",
        "setTargetPageIndex",
        "title",
        "getTitle",
        "setTitle",
        "type",
        "getType",
        "setType",
        "userId",
        "getUserId",
        "setUserId",
        "clearRevisionId",
        "",
        "getLinkRect",
        "isEnabled",
        "",
        "isOnlyIconStyle",
        "loadDisplayTitle",
        "setLinkRect",
        "linkRect",
        "Companion",
        "LinkStatus",
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
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private boundingRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private displayStyle:I

.field private documentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extra:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private targetDocId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetObjId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private targetPageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetPageIndex:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, "DOCUMENT"

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->type:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->getONLY_ICON()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->displayStyle:I

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetObjId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clearRevisionId()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final getBoundingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->boundingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->displayStyle:I

    return p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtra()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkRect()Landroid/graphics/RectF;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->boundingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->pageUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getRemark()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->remark:Ljava/lang/String;

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->status:I

    return p0
.end method

.method public final getTargetDocId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetDocId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetObjId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetObjId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetPageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetPageIndex:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOnlyIconStyle()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->displayStyle:I

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean$DisplayStyle;->getONLY_ICON()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadDisplayTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->remark:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->remark:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->type:Ljava/lang/String;

    const-string v1, "NOTE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "DOCUMENT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/ShapeLinkUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->title:Ljava/lang/String;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetPageIndex:I

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/utils/ShapeLinkUtils;->getLinkNoteDisplayTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->content:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public final setBoundingRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->boundingRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->content:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->displayStyle:I

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->documentId:Ljava/lang/String;

    return-void
.end method

.method public final setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->extra:Ljava/lang/String;

    return-void
.end method

.method public final setLinkRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->boundingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setPageUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->pageUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->path:Ljava/lang/String;

    return-void
.end method

.method public final setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->remark:Ljava/lang/String;

    return-void
.end method

.method public final setRevisionId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->status:I

    return-void
.end method

.method public final setTargetDocId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetDocId:Ljava/lang/String;

    return-void
.end method

.method public final setTargetObjId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetObjId:Ljava/lang/String;

    return-void
.end method

.method public final setTargetPageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetPageId:Ljava/lang/String;

    return-void
.end method

.method public final setTargetPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->targetPageIndex:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->userId:Ljava/lang/String;

    return-void
.end method
