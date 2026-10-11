.class public final Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteRenderArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteRenderArgs.kt\ncom/onyx/android/sdk/note/common/data/render/NoteRenderArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1549#2:119\n1620#2,3:120\n766#2:123\n857#2,2:124\n*S KotlinDebug\n*F\n+ 1 NoteRenderArgs.kt\ncom/onyx/android/sdk/note/common/data/render/NoteRenderArgs\n*L\n38#1:119\n38#1:120,3\n56#1:123\n56#1:124,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\r\u00a2\u0006\u0004\u00084\u00105J\u0006\u0010\u0003\u001a\u00020\u0002J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u0007\u001a\u00020\u0000J\u0006\u0010\u0008\u001a\u00020\u0002J\u0018\u0010\u000c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0011\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR(\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010/\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u00103\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0013\u001a\u0004\u00081\u0010\u0015\"\u0004\u00082\u0010\u0017\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "",
        "",
        "isNeedRender",
        "",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "noteSliceList",
        "copy",
        "isEnabledEnsureDisplay",
        "it",
        "Landroid/graphics/RectF;",
        "pageDisplayRectF",
        "a",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "b",
        "Z",
        "getShowExcerptIndicator",
        "()Z",
        "setShowExcerptIndicator",
        "(Z)V",
        "showExcerptIndicator",
        "",
        "c",
        "I",
        "getLayerId",
        "()I",
        "setLayerId",
        "(I)V",
        "layerId",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
        "d",
        "Ljava/util/List;",
        "getSliceRenderInfoList",
        "()Ljava/util/List;",
        "setSliceRenderInfoList",
        "(Ljava/util/List;)V",
        "sliceRenderInfoList",
        "e",
        "Landroid/graphics/RectF;",
        "getDirtyPageDisplayRectF",
        "()Landroid/graphics/RectF;",
        "setDirtyPageDisplayRectF",
        "(Landroid/graphics/RectF;)V",
        "dirtyPageDisplayRectF",
        "f",
        "getSupportRenderPageContentBitmap",
        "setSupportRenderPageContentBitmap",
        "supportRenderPageContentBitmap",
        "<init>",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "sdk-note_overseasRelease"
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
        "SMAP\nNoteRenderArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteRenderArgs.kt\ncom/onyx/android/sdk/note/common/data/render/NoteRenderArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1549#2:119\n1620#2,3:120\n766#2:123\n857#2,2:124\n*S KotlinDebug\n*F\n+ 1 NoteRenderArgs.kt\ncom/onyx/android/sdk/note/common/data/render/NoteRenderArgs\n*L\n38#1:119\n38#1:120,3\n56#1:123\n56#1:124,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->d:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->e:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->f:Z

    return-void
.end method

.method public static final synthetic access$isValidDirtyRect(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->a(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Z
    .locals 3

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isContainPageDisplayRect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dirtyRect not in slice, do not render, isHighQuality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p2
.end method

.method public final copy()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->b:Z

    iput-boolean v1, v0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->b:Z

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->c:I

    iput v1, v0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->c:I

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->e:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->e:Landroid/graphics/RectF;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->f:Z

    iput-boolean p0, v0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->f:Z

    return-object v0
.end method

.method public final getDirtyPageDisplayRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->e:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getLayerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->c:I

    return p0
.end method

.method public final getShowExcerptIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->b:Z

    return p0
.end method

.method public final getSliceRenderInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getSupportRenderPageContentBitmap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->f:Z

    return p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->a:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final isEnabledEnsureDisplay()Z
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->e:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->noteSliceList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;-><init>(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;Landroid/graphics/RectF;)V

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final isNeedRender()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->d:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final noteSliceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getNoteRenderSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setDirtyPageDisplayRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->e:Landroid/graphics/RectF;

    return-void
.end method

.method public final setLayerId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->c:I

    return-void
.end method

.method public final setShowExcerptIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->b:Z

    return-void
.end method

.method public final setSliceRenderInfoList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->d:Ljava/util/List;

    return-void
.end method

.method public final setSupportRenderPageContentBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->f:Z

    return-void
.end method
