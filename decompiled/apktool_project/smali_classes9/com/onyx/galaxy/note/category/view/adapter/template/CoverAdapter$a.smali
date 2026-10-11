.class public final Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
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
.method public a(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiffUtilEquals"
        }
    .end annotation

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$a;->a(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$a;->b(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Z

    move-result p0

    return p0
.end method

.method public b(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
