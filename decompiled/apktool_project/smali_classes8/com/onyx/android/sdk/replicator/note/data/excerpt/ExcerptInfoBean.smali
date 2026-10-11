.class public final Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u001a\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 a2\u00020\u0001:\u0001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010^\u001a\u00020\u0000H\u0016J\u0006\u0010_\u001a\u00020`R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010!\"\u0004\u0008&\u0010#R\u001a\u0010\'\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010!\"\u0004\u0008)\u0010#R\u001a\u0010*\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0018\"\u0004\u0008,\u0010\u001aR\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\u001a\u00100\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010!\"\u0004\u00082\u0010#R\u001a\u00103\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010!\"\u0004\u00085\u0010#R\u001a\u00106\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010!\"\u0004\u00088\u0010#R \u00109\u001a\u0008\u0012\u0004\u0012\u00020;0:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001a\u0010@\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010!\"\u0004\u0008B\u0010#R\u001a\u0010C\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010!\"\u0004\u0008E\u0010#R\u001a\u0010F\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u0006\"\u0004\u0008H\u0010\u0008R\u001a\u0010I\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010\u0006\"\u0004\u0008K\u0010\u0008R \u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u001f0:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010=\"\u0004\u0008N\u0010?R\u001a\u0010O\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010\u0006\"\u0004\u0008Q\u0010\u0008R\u001a\u0010R\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010!\"\u0004\u0008T\u0010#R\u001a\u0010U\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010\u0012\"\u0004\u0008W\u0010\u0014R\u001a\u0010X\u001a\u00020YX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]\u00a8\u0006b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "",
        "()V",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "commentUpdateByUser",
        "",
        "getCommentUpdateByUser",
        "()Z",
        "setCommentUpdateByUser",
        "(Z)V",
        "createdAt",
        "",
        "getCreatedAt",
        "()J",
        "setCreatedAt",
        "(J)V",
        "docScaleOnCreate",
        "",
        "getDocScaleOnCreate",
        "()F",
        "setDocScaleOnCreate",
        "(F)V",
        "docScaleOnUpdate",
        "getDocScaleOnUpdate",
        "setDocScaleOnUpdate",
        "endPosition",
        "",
        "getEndPosition",
        "()Ljava/lang/String;",
        "setEndPosition",
        "(Ljava/lang/String;)V",
        "imgId",
        "getImgId",
        "setImgId",
        "note",
        "getNote",
        "setNote",
        "orderIndex",
        "getOrderIndex",
        "setOrderIndex",
        "pageIndex",
        "getPageIndex",
        "setPageIndex",
        "pageUniqueId",
        "getPageUniqueId",
        "setPageUniqueId",
        "parentId",
        "getParentId",
        "setParentId",
        "quote",
        "getQuote",
        "setQuote",
        "rectList",
        "",
        "Landroid/graphics/RectF;",
        "getRectList",
        "()Ljava/util/List;",
        "setRectList",
        "(Ljava/util/List;)V",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "startPosition",
        "getStartPosition",
        "setStartPosition",
        "status",
        "getStatus",
        "setStatus",
        "style",
        "getStyle",
        "setStyle",
        "tagIdList",
        "getTagIdList",
        "setTagIdList",
        "type",
        "getType",
        "setType",
        "uniqueId",
        "getUniqueId",
        "setUniqueId",
        "updatedAt",
        "getUpdatedAt",
        "setUpdatedAt",
        "writingMode",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "getWritingMode",
        "()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "setWritingMode",
        "(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V",
        "clone",
        "resetOrderIndex",
        "",
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
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_ORDER_INDEX:F = -1.0f

.field public static final STYLE_GONE:I = 0x0

.field public static final STYLE_HIGHLIGHT:I = 0x1

.field public static final STYLE_STROKE:I = 0x3

.field public static final STYLE_UNDERLINE:I = 0x2

.field public static final TYPE_STICKY_POINT:I = 0x2

.field public static final TYPE_STICKY_RECT:I = 0x1

.field public static final TYPE_TEXT:I


# instance fields
.field private color:I

.field private commentUpdateByUser:Z

.field private createdAt:J

.field private docScaleOnCreate:F

.field private docScaleOnUpdate:F

.field private endPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imgId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private note:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private orderIndex:F

.field private pageIndex:I

.field private pageUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private quote:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:I

.field private style:I

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

.field private type:I

.field private uniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private updatedAt:J

.field private writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->parentId:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->type:I

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->quote:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->note:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->imgId:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->docScaleOnCreate:F

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->docScaleOnUpdate:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->orderIndex:F

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->pageUniqueId:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->pageIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->rectList:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->startPosition:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->endPosition:Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->tagIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->revisionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->rectList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$clone$1$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$clone$1$1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->rectList:Ljava/util/List;

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    iput-object p0, v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->clone()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->color:I

    return p0
.end method

.method public final getCommentUpdateByUser()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->commentUpdateByUser:Z

    return p0
.end method

.method public final getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->createdAt:J

    return-wide v0
.end method

.method public final getDocScaleOnCreate()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->docScaleOnCreate:F

    return p0
.end method

.method public final getDocScaleOnUpdate()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->docScaleOnUpdate:F

    return p0
.end method

.method public final getEndPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->endPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getImgId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->imgId:Ljava/lang/String;

    return-object p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->note:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->orderIndex:F

    return p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->pageIndex:I

    return p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->pageUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->quote:Ljava/lang/String;

    return-object p0
.end method

.method public final getRectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->rectList:Ljava/util/List;

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->startPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->status:I

    return p0
.end method

.method public final getStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->style:I

    return p0
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

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->tagIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->type:I

    return p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->uniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->updatedAt:J

    return-wide v0
.end method

.method public final getWritingMode()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-object p0
.end method

.method public final resetOrderIndex()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->orderIndex:F

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->color:I

    return-void
.end method

.method public final setCommentUpdateByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->commentUpdateByUser:Z

    return-void
.end method

.method public final setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->createdAt:J

    return-void
.end method

.method public final setDocScaleOnCreate(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->docScaleOnCreate:F

    return-void
.end method

.method public final setDocScaleOnUpdate(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->docScaleOnUpdate:F

    return-void
.end method

.method public final setEndPosition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->endPosition:Ljava/lang/String;

    return-void
.end method

.method public final setImgId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->imgId:Ljava/lang/String;

    return-void
.end method

.method public final setNote(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->note:Ljava/lang/String;

    return-void
.end method

.method public final setOrderIndex(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->orderIndex:F

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->pageIndex:I

    return-void
.end method

.method public final setPageUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->pageUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setQuote(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->quote:Ljava/lang/String;

    return-void
.end method

.method public final setRectList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->rectList:Ljava/util/List;

    return-void
.end method

.method public final setRevisionId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setStartPosition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->startPosition:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->status:I

    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->style:I

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

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->tagIdList:Ljava/util/List;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->type:I

    return-void
.end method

.method public final setUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setUpdatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->updatedAt:J

    return-void
.end method

.method public final setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-void
.end method
