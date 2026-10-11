.class public final Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "f",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "",
        "g",
        "Z",
        "renderTemplate",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapOrNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v3, v2, v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clear$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->obtainVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v3, v2, v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clear$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    return-void

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadTemplateListById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurFillColor()I

    move-result p1

    goto :goto_3

    :cond_6
    move p1, v3

    :goto_3
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v3, v2, v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clear$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clear(Landroid/graphics/Bitmap;I)V

    :goto_4
    return-void
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bitmap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
