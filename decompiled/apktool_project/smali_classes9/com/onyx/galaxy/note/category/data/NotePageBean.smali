.class public final Lcom/onyx/galaxy/note/category/data/NotePageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/data/NotePageBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0008\u0018\u0000 (2\u00020\u0001:\u0001(B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0006\u0010\u0016\u001a\u00020\u0017J\r\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0019J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001bJ\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\u0006\u0010 \u001a\u00020\u0014J\u0006\u0010!\u001a\u00020\u0014J\u0006\u0010\"\u001a\u00020\u0014J\u0006\u0010#\u001a\u00020\u0014J\u0006\u0010$\u001a\u00020\u0014J\u0006\u0010%\u001a\u00020\u0014J\u0006\u0010&\u001a\u00020\u0014J\t\u0010\'\u001a\u00020\u001dH\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "",
        "type",
        "",
        "noteModelBean",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "pageModelBean",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V",
        "getNoteModelBean",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "getPageModelBean",
        "()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "getType",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "getManualOrderIndex",
        "",
        "getScene",
        "()Ljava/lang/Integer;",
        "getSortCreateAt",
        "",
        "getSortName",
        "",
        "getSortUpdateAt",
        "hashCode",
        "isHeaderType",
        "isNoteDoc",
        "isNoteFolder",
        "isNoteScene",
        "isNoteType",
        "isPageType",
        "isPdfScene",
        "toString",
        "Companion",
        "note_overseasRelease"
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
.field public static final Companion:Lcom/onyx/galaxy/note/category/data/NotePageBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_HEADER:I = 0x3

.field public static final TYPE_NOTE:I = 0x2

.field public static final TYPE_PAGE:I = 0x1


# instance fields
.field private final noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NotePageBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->Companion:Lcom/onyx/galaxy/note/category/data/NotePageBean$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;-><init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/galaxy/note/category/data/NotePageBean;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;ILjava/lang/Object;)Lcom/onyx/galaxy/note/category/data/NotePageBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->copy(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)Lcom/onyx/galaxy/note/category/data/NotePageBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    return p0
.end method

.method public final component2()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-object p0
.end method

.method public final component3()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    return-object p0
.end method

.method public final copy(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)Lcom/onyx/galaxy/note/category/data/NotePageBean;
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;-><init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    iget v1, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    iget v3, p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    iget-object p1, p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getManualOrderIndex()F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result v1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getOrderIndex()F

    move-result v1

    :cond_2
    return v1
.end method

.method public final getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-object p0
.end method

.method public final getPageModelBean()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    return-object p0
.end method

.method public final getScene()Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getScene()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getSortCreateAt()J
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v1

    :cond_0
    return-wide v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getDocCreateAt()J

    move-result-wide v1

    :cond_2
    return-wide v1
.end method

.method public final getSortName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getDocName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final getSortUpdateAt()J
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v1

    :cond_0
    return-wide v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->getDocUpdatedAt()J

    move-result-wide v1

    :cond_2
    return-wide v1
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isHeaderType()Z
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteDoc()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteFolder()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteScene()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getScene()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isNoteScene(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNoteType()Z
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPageType()Z
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPdfScene()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getScene()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isPdfScribbleScene(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotePageBean(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", noteModelBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageModelBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;->pageModelBean:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
