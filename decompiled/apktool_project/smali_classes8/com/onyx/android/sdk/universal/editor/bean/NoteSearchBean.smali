.class public final Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteSearchBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n1549#2:257\n1620#2,3:258\n1855#2,2:263\n1549#2:265\n1620#2,3:266\n364#3:261\n1#4:262\n*S KotlinDebug\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean\n*L\n74#1:257\n74#1:258,3\n103#1:263,2\n112#1:265\n112#1:266,3\n91#1:261\n91#1:262\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 a2\u00020\u0001:\u0001aB\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0014\u0012\u0006\u0010 \u001a\u00020\u001b\u00a2\u0006\u0004\u0008_\u0010`J\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0007J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u000f\u001a\u00020\u000eJ\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0010J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0010J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0010J\u0006\u0010\u0015\u001a\u00020\u0014R\u0017\u0010\u001a\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010 \u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010/\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u00104\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0017\u001a\u0004\u00081\u0010\u0019\"\u0004\u00082\u00103R\"\u0010;\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\"\u0010?\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00106\u001a\u0004\u0008=\u00108\"\u0004\u0008>\u0010:R\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\"\u0010K\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u00106\u001a\u0004\u0008I\u00108\"\u0004\u0008J\u0010:R\"\u0010N\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR*\u0010Y\u001a\n\u0012\u0004\u0012\u00020R\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR(\u0010^\u001a\u0008\u0012\u0004\u0012\u00020Z0\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010T\u001a\u0004\u0008\\\u0010V\"\u0004\u0008]\u0010X\u00a8\u0006b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "",
        "copy",
        "",
        "getCacheKey",
        "",
        "hasSelections",
        "",
        "getPageContentScale",
        "Landroid/graphics/RectF;",
        "rectF",
        "applyMargin",
        "",
        "contentMapToPageRect",
        "Landroid/graphics/Matrix;",
        "getPageMarginMatrix",
        "",
        "contentMapToPageRectList",
        "shapeMapToPageRectList",
        "getPageRectList",
        "",
        "getRegionSize",
        "a",
        "I",
        "getType",
        "()I",
        "type",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getNoteModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "d",
        "Ljava/lang/String;",
        "getPageId",
        "()Ljava/lang/String;",
        "setPageId",
        "(Ljava/lang/String;)V",
        "pageId",
        "e",
        "getPageIndex",
        "setPageIndex",
        "(I)V",
        "pageIndex",
        "f",
        "Landroid/graphics/RectF;",
        "getPageDisplayRect",
        "()Landroid/graphics/RectF;",
        "setPageDisplayRect",
        "(Landroid/graphics/RectF;)V",
        "pageDisplayRect",
        "g",
        "getPageOriginRect",
        "setPageOriginRect",
        "pageOriginRect",
        "",
        "h",
        "J",
        "getPageUpdatedAt",
        "()J",
        "setPageUpdatedAt",
        "(J)V",
        "pageUpdatedAt",
        "i",
        "getPageContentOriginRectF",
        "setPageContentOriginRectF",
        "pageContentOriginRectF",
        "j",
        "Z",
        "isPageDarkTheme",
        "()Z",
        "setPageDarkTheme",
        "(Z)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "k",
        "Ljava/util/List;",
        "getSelections",
        "()Ljava/util/List;",
        "setSelections",
        "(Ljava/util/List;)V",
        "selections",
        "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
        "l",
        "getSelectionRegions",
        "setSelectionRegions",
        "selectionRegions",
        "<init>",
        "(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "Companion",
        "sdk-universal_overseasRelease"
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
        "SMAP\nNoteSearchBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n1549#2:257\n1620#2,3:258\n1855#2,2:263\n1549#2:265\n1620#2,3:266\n364#3:261\n1#4:262\n*S KotlinDebug\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean\n*L\n74#1:257\n74#1:258,3\n103#1:263,2\n112#1:265\n112#1:266,3\n91#1:261\n91#1:262\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_HANDWRITING:I = 0x1

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_TITLE:I


# instance fields
.field public final a:I

.field public final b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public transient c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:I

.field public f:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:J

.field public i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->a:I

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->e:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->f:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->g:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->i:Landroid/graphics/RectF;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    return-void
.end method

.method public static synthetic contentMapToPageRect$default(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/RectF;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->contentMapToPageRect(Landroid/graphics/RectF;Z)V

    return-void
.end method


# virtual methods
.method public final contentMapToPageRect(Landroid/graphics/RectF;Z)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageContentScale()F

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageMarginMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public final contentMapToPageRectList()Ljava/util/List;
    .locals 4
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->k:Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-interface {v2}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->union(Ljava/util/Collection;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->contentMapToPageRect(Landroid/graphics/RectF;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final copy()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->a:I

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->d:Ljava/lang/String;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->e:I

    iput v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->e:I

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->f:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->g:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->g:Landroid/graphics/RectF;

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->h:J

    iput-wide v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->h:J

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->i:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->i:Landroid/graphics/RectF;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->j:Z

    iput-boolean v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->j:Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->k:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p0, v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object v0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/SelectionRegion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const-string v1, "-"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->b:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public final getPageContentOriginRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageContentScale()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getPageDisplayRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->f:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->e:I

    return p0
.end method

.method public final getPageMarginMatrix()Landroid/graphics/Matrix;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->g:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->f:Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p0

    invoke-static {v1, v0}, Landroidx/core/graphics/MatrixKt;->translationMatrix(FF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final getPageOriginRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->g:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageRectList()Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->contentMapToPageRectList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->shapeMapToPageRectList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getPageUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->h:J

    return-wide v0
.end method

.method public final getRegionSize()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$getRegionSize$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$getRegionSize$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getSelectionRegions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    return-object p0
.end method

.method public final getSelections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->k:Ljava/util/List;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->a:I

    return p0
.end method

.method public final hasSelections()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->k:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

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

.method public final isPageDarkTheme()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->j:Z

    return p0
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setPageContentOriginRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPageDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->j:Z

    return-void
.end method

.method public final setPageDisplayRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->d:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->e:I

    return-void
.end method

.method public final setPageOriginRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->g:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPageUpdatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->h:J

    return-void
.end method

.method public final setSelectionRegions(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/SelectionRegion;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

    return-void
.end method

.method public final setSelections(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->k:Ljava/util/List;

    return-void
.end method

.method public final shapeMapToPageRectList()Ljava/util/List;
    .locals 5
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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->l:Ljava/util/List;

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

    check-cast v1, Lcom/onyx/android/sdk/base/data/SelectionRegion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SelectionRegion;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
