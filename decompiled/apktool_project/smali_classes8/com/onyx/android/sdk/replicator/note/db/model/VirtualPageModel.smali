.class public final Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0007\n\u0002\u0008\u001a\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 D2\u00020\u0001:\u0001DB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010?\u001a\u00020\u0004J\u0006\u0010@\u001a\u00020\u0004J\u0006\u0010A\u001a\u00020\u0013J\u0006\u0010B\u001a\u00020CR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001c\u0010!\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000eR\u001c\u0010$\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000c\"\u0004\u0008&\u0010\u000eR\u001a\u0010\'\u001a\u00020(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010*\"\u0004\u0008/\u0010,R\u001a\u00100\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0015\"\u0004\u00082\u0010\u0017R\u001a\u00103\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0015\"\u0004\u00085\u0010\u0017R\u001a\u00106\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u000c\"\u0004\u00088\u0010\u000eR\u001a\u00109\u001a\u00020(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010*\"\u0004\u0008;\u0010,R\u001a\u0010<\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0006\"\u0004\u0008>\u0010\u0008\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "colorTheme",
        "",
        "getColorTheme",
        "()I",
        "setColorTheme",
        "(I)V",
        "contentId",
        "",
        "getContentId",
        "()Ljava/lang/String;",
        "setContentId",
        "(Ljava/lang/String;)V",
        "contentPageId",
        "getContentPageId",
        "setContentPageId",
        "contentPageSize",
        "Landroid/graphics/RectF;",
        "getContentPageSize",
        "()Landroid/graphics/RectF;",
        "setContentPageSize",
        "(Landroid/graphics/RectF;)V",
        "contentRelativePath",
        "getContentRelativePath",
        "setContentRelativePath",
        "contentType",
        "getContentType",
        "setContentType",
        "marginColor",
        "getMarginColor",
        "setMarginColor",
        "marginTemplateResource",
        "getMarginTemplateResource",
        "setMarginTemplateResource",
        "marginTemplateResourceId",
        "getMarginTemplateResourceId",
        "setMarginTemplateResourceId",
        "marginTemplateSpace",
        "",
        "getMarginTemplateSpace",
        "()F",
        "setMarginTemplateSpace",
        "(F)V",
        "orderIndex",
        "getOrderIndex",
        "setOrderIndex",
        "pageSize",
        "getPageSize",
        "setPageSize",
        "pageSizeWithMargin",
        "getPageSizeWithMargin",
        "setPageSizeWithMargin",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "rotation",
        "getRotation",
        "setRotation",
        "status",
        "getStatus",
        "setStatus",
        "getCellColumnIndex",
        "getCellRowIndex",
        "getPageOriginRectFCopy",
        "resetTemplateData",
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
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private colorTheme:I

.field private contentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentPageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentPageSize:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentRelativePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private marginColor:I

.field private marginTemplateResource:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private marginTemplateResourceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private marginTemplateSpace:F

.field private orderIndex:F

.field private pageSize:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageSizeWithMargin:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rotation:F

.field private status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSize:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSizeWithMargin:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentPageSize:Landroid/graphics/RectF;

    const-string v0, "geo_layout"

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentRelativePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentPageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->revisionId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginColor:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginTemplateSpace:F

    return-void
.end method


# virtual methods
.method public final getCellColumnIndex()I
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSize:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final getCellRowIndex()I
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSize:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final getColorTheme()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->colorTheme:I

    return p0
.end method

.method public final getContentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentPageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentPageSize()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentPageSize:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getContentRelativePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentRelativePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getMarginColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginColor:I

    return p0
.end method

.method public final getMarginTemplateResource()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginTemplateResource:Ljava/lang/String;

    return-object p0
.end method

.method public final getMarginTemplateResourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginTemplateResourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMarginTemplateSpace()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginTemplateSpace:F

    return p0
.end method

.method public final getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->orderIndex:F

    return p0
.end method

.method public final getPageOriginRectFCopy()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSize:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object p0
.end method

.method public final getPageSize()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSize:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageSizeWithMargin()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSizeWithMargin:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRotation()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->rotation:F

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->status:I

    return p0
.end method

.method public final resetTemplateData()V
    .locals 1

    const-string v0, "vector"

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentRelativePath:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentPageId:Ljava/lang/String;

    return-void
.end method

.method public final setColorTheme(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->colorTheme:I

    return-void
.end method

.method public final setContentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentId:Ljava/lang/String;

    return-void
.end method

.method public final setContentPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentPageId:Ljava/lang/String;

    return-void
.end method

.method public final setContentPageSize(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentPageSize:Landroid/graphics/RectF;

    return-void
.end method

.method public final setContentRelativePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentRelativePath:Ljava/lang/String;

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->contentType:Ljava/lang/String;

    return-void
.end method

.method public final setMarginColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginColor:I

    return-void
.end method

.method public final setMarginTemplateResource(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginTemplateResource:Ljava/lang/String;

    return-void
.end method

.method public final setMarginTemplateResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginTemplateResourceId:Ljava/lang/String;

    return-void
.end method

.method public final setMarginTemplateSpace(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->marginTemplateSpace:F

    return-void
.end method

.method public final setOrderIndex(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->orderIndex:F

    return-void
.end method

.method public final setPageSize(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSize:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPageSizeWithMargin(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->pageSizeWithMargin:Landroid/graphics/RectF;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->rotation:F

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->status:I

    return-void
.end method
