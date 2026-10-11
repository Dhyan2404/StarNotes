.class public final Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u000e\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "getInsertPageArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "setInsertPageArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V",
        "insertPageArgs",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "g",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "getReaderPageInfo",
        "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "setReaderPageInfo",
        "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V",
        "readerPageInfo",
        "virtualPage",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "getVirtualPage",
        "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "setVirtualPage",
        "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V",
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
.field public f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public virtualPage:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    new-instance p1, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->g:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getInsertAt()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->setVirtualPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->g:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->g:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    move-object v4, v0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "import_pdf"

    :cond_3
    move-object v5, v0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getColorTheme()I

    move-result v1

    :cond_4
    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPageByReader(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getContentOriginRectF()Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object v2

    :cond_6
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPage(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->g:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getColorTheme()I

    move-result v1

    :cond_8
    move v6, v1

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPageByReader$default(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->copyVirtualPageTemplateAndUpdateConfig(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    return-object v0
.end method

.method public final getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-object p0
.end method

.method public final getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->g:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-object p0
.end method

.method public final getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->virtualPage:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "virtualPage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setInsertPageArgs(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-void
.end method

.method public final setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->g:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-void
.end method

.method public final setVirtualPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;->virtualPage:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    return-void
.end method
