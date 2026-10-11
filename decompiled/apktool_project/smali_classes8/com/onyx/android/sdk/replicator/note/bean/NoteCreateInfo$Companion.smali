.class public final Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;",
        "",
        "()V",
        "checkCoverValid",
        "",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "checkPaperValid",
        "checkQuickTemplateValid",
        "checkValid",
        "createFromPDF",
        "path",
        "",
        "noteName",
        "quicklyNoteInfo",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;-><init>()V

    return-void
.end method

.method private final checkCoverValid(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->isContainsCover()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getCoverJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getRelativePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final checkPaperValid(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getRelativePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final checkQuickTemplateValid(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteCreateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;->checkCoverValid(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;->checkPaperValid(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final checkValid(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "noteCreateInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final createFromPDF(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    const-string v0, "path"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteName"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-object/from16 v0, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x37f6

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;ZILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;Landroid/graphics/RectF;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v17
.end method

.method public final quicklyNoteInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 18
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v15, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-object v0, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3fff

    move-object/from16 v17, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;ZILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;Landroid/graphics/RectF;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x1

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setContainsCover(Z)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setSizeFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    return-object v1
.end method
