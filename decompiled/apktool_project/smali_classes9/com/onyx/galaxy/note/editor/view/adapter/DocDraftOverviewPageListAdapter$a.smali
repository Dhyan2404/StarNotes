.class public final Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v0

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getExtraCacheKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getExtraCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$a;->a(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter$a;->b(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z

    move-result p0

    return p0
.end method

.method public b(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
