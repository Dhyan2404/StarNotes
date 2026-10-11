.class public final Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 +2\u00020\u0001:\u0001+B7\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010&\u001a\u00020\u0000J\u0008\u0010\'\u001a\u0004\u0018\u00010\u0007J\u0006\u0010(\u001a\u00020\u0007J\u0006\u0010)\u001a\u00020*R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011\"\u0004\u0008\u001d\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "pageIndex",
        "",
        "pageId",
        "",
        "pageDisplayRectF",
        "Landroid/graphics/RectF;",
        "noteSearchBean",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "extraCacheKey",
        "getExtraCacheKey",
        "()Ljava/lang/String;",
        "setExtraCacheKey",
        "(Ljava/lang/String;)V",
        "getNoteSearchBean",
        "()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "setNoteSearchBean",
        "(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V",
        "getPageDisplayRectF",
        "()Landroid/graphics/RectF;",
        "setPageDisplayRectF",
        "(Landroid/graphics/RectF;)V",
        "getPageId",
        "setPageId",
        "getPageIndex",
        "()I",
        "updatedAt",
        "",
        "getUpdatedAt",
        "()J",
        "setUpdatedAt",
        "(J)V",
        "copy",
        "getDocId",
        "toObjectCacheKey",
        "updateExtraCacheKey",
        "",
        "Companion",
        "sdk-universal_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extraCacheKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private noteSearchBean:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageDisplayRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pageIndex:I

.field private updatedAt:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageDisplayRectF"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageIndex:I

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageDisplayRectF:Landroid/graphics/RectF;

    .line 6
    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->noteSearchBean:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->extraCacheKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 8
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageIndex:I

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageId:Ljava/lang/String;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageDisplayRectF:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->noteSearchBean:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->copy()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v5, p0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V

    return-object v6
.end method

.method public final getDocId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->noteSearchBean:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getExtraCacheKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->extraCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->noteSearchBean:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    return-object p0
.end method

.method public final getPageDisplayRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageDisplayRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageIndex:I

    return p0
.end method

.method public final getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->updatedAt:J

    return-wide v0
.end method

.method public final setExtraCacheKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->extraCacheKey:Ljava/lang/String;

    return-void
.end method

.method public final setNoteSearchBean(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->noteSearchBean:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    return-void
.end method

.method public final setPageDisplayRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageDisplayRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setUpdatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->updatedAt:J

    return-void
.end method

.method public final toObjectCacheKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->pageDisplayRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->extraCacheKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateExtraCacheKey()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->updatedAt:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->extraCacheKey:Ljava/lang/String;

    return-void
.end method
