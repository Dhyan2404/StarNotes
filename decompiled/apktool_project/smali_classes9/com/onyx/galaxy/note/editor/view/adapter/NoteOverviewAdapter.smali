.class public final Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$a;,
        Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter<",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteOverviewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,170:1\n350#2,7:171\n350#2,7:178\n256#3,2:185\n*S KotlinDebug\n*F\n+ 1 NoteOverviewAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter\n*L\n59#1:171,7\n60#1:178,7\n76#1:185,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00039:;B\u0007\u00a2\u0006\u0004\u00087\u00108J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\"\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\tH\u0014J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0015H\u0002R$\u0010%\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010+\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010&\u001a\u0004\u0008-\u0010(\"\u0004\u0008.\u0010*R$\u00106\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;",
        "",
        "selectedId",
        "",
        "updateSelected",
        "holder",
        "",
        "position",
        "item",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Landroid/widget/TextView;",
        "textView",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModelBean",
        "z",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "t",
        "syncNoteModel",
        "s",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;",
        "y",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;",
        "getListener",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;",
        "setListener",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;)V",
        "listener",
        "Ljava/lang/String;",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "keyword",
        "A",
        "getSelectedId",
        "setSelectedId",
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;",
        "B",
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;",
        "getViewmodel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;",
        "setViewmodel",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)V",
        "viewmodel",
        "<init>",
        "()V",
        "a",
        "NoteOverviewHolder",
        "NoteOverviewListener",
        "note_overseasRelease"
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
        "SMAP\nNoteOverviewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,170:1\n350#2,7:171\n350#2,7:178\n256#3,2:185\n*S KotlinDebug\n*F\n+ 1 NoteOverviewAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter\n*L\n59#1:171,7\n60#1:178,7\n76#1:185,2\n*E\n"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->A:Ljava/lang/String;

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->w(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->x(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->y(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->u(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->v(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final u(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Landroid/widget/ImageView;)V
    .locals 2

    const-string v0, "$filePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->getDefaultFileCacheKey(Ljava/io/File;)Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$note"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->y:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;

    if-eqz p0, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;->onItemLongClick(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$note"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->y:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;->onItemClick(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :cond_0
    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$note"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->y:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;->onItemClick(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :cond_0
    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$note"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->y:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;

    if-eqz p0, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;->onItemMore(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->z:Ljava/lang/String;

    return-object p0
.end method

.method public final getListener()Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->y:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;

    return-object p0
.end method

.method public final getSelectedId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->A:Ljava/lang/String;

    return-object p0
.end method

.method public final getViewmodel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->B:Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/NotePageBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 2
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->A:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->tvDate:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->s(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->z(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    .line 6
    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->B:Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->isNoteReLocked(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->ivThumbnailLock:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v2, "ivThumbnailLock"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    .line 8
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->ivThumbnail:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v0, "ivThumbnail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->t(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    .line 10
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->ivThumbnail:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/lzj;

    invoke-direct {v1, p0, p2}, Lcom/sunia/HTREnginev2/lzj;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 11
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p3

    iget-object v1, p3, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->ivThumbnail:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/mzj;

    invoke-direct {v4, p0, p2}, Lcom/sunia/HTREnginev2/mzj;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string p3, "getRoot(...)"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/nzj;

    invoke-direct {v3, p0, p2}, Lcom/sunia/HTREnginev2/nzj;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->ivMore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p1, "ivMore"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/sunia/HTREnginev2/ozj;

    invoke-direct {v3, p0, p2}, Lcom/sunia/HTREnginev2/ozj;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;)V

    return-object p1
.end method

.method public final s(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_3()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->z:Ljava/lang/String;

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->y:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;

    return-void
.end method

.method public final setSelectedId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->A:Ljava/lang/String;

    return-void
.end method

.method public final setViewmodel(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->B:Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    return-void
.end method

.method public final t(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_130:I

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_162:I

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_162:I

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_130:I

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->isScrollBarDragging()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_holder_logo:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p2, Lcom/sunia/HTREnginev2/pzj;

    invoke-direct {p2, v0, p0, p1}, Lcom/sunia/HTREnginev2/pzj;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateSelected(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "selectedId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->A:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_3
    move-object v6, v5

    :goto_4
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->A:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-ltz v4, :cond_8

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_6

    move-object v5, p0

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_6
    if-nez v5, :cond_7

    return-void

    :cond_7
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_8
    return-void
.end method

.method public final z(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 8

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/SpanUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/SpanUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v2, p2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->z:Ljava/lang/String;

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_highlight_01:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/base/utils/SpanUtils;->highLightKeyword$default(Lcom/onyx/android/sdk/base/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
