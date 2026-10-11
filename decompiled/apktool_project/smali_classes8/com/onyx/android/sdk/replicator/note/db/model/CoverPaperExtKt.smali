.class public final Lcom/onyx/android/sdk/replicator/note/db/model/CoverPaperExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0008\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\t\u001a\n\u0010\n\u001a\u00020\u0007*\u00020\u0002\u001a\n\u0010\n\u001a\u00020\u0007*\u00020\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "convertToCoverCategory",
        "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;",
        "convertToTemplateCategory",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;",
        "isCloud",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "isOfficial",
        "sdk-replicator_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final convertToCoverCategory(Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;)Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;
    .locals 8
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Orientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->getLocalTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;->setType(I)V

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverPaperExtKt;->isOfficial(Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->getTitleResName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static final convertToTemplateCategory(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;)Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;
    .locals 8
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Orientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->getLocalTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->setType(I)V

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverPaperExtKt;->isOfficial(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->getTitleResName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static final isCloud(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isCloud(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isOfficial(Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->getSource()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isOfficial(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->getSource()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
