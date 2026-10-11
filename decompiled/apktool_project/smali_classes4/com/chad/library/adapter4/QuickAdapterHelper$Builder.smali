.class public final Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter4/QuickAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0016\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0013\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010R\u001c\u0010\u0016\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0019\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;",
        "",
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;",
        "loadStateAdapter",
        "setTrailingLoadStateAdapter",
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;",
        "loadMoreListener",
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;",
        "setLeadingLoadStateAdapter",
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;",
        "loadListener",
        "Landroidx/recyclerview/widget/ConcatAdapter$Config;",
        "config",
        "setConfig",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "build",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "attachTo",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "a",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "contentAdapter",
        "b",
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;",
        "leadingLoadStateAdapter",
        "c",
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;",
        "trailingLoadStateAdapter",
        "d",
        "Landroidx/recyclerview/widget/ConcatAdapter$Config;",
        "<init>",
        "(Lcom/chad/library/adapter4/BaseQuickAdapter;)V",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/chad/library/adapter4/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter4/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroidx/recyclerview/widget/ConcatAdapter$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter4/BaseQuickAdapter;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter4/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "contentAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->a:Lcom/chad/library/adapter4/BaseQuickAdapter;

    sget-object p1, Landroidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    const-string v0, "DEFAULT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->d:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    return-void
.end method


# virtual methods
.method public final attachTo(Landroidx/recyclerview/widget/RecyclerView;)Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/chad/library/adapter4/QuickAdapterHelper;

    iget-object v2, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->a:Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v3, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->b:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;

    iget-object v4, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->c:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    iget-object v5, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->d:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/chad/library/adapter4/QuickAdapterHelper;-><init>(Lcom/chad/library/adapter4/BaseQuickAdapter;Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/ConcatAdapter$Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public final build()Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/chad/library/adapter4/QuickAdapterHelper;

    iget-object v1, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->a:Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v2, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->b:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;

    iget-object v3, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->c:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    iget-object v4, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->d:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter4/QuickAdapterHelper;-><init>(Lcom/chad/library/adapter4/BaseQuickAdapter;Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/ConcatAdapter$Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final setConfig(Landroidx/recyclerview/widget/ConcatAdapter$Config;)Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/ConcatAdapter$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->d:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    return-object p0
.end method

.method public final setLeadingLoadStateAdapter(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;)Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;
    .locals 1
    .param p1    # Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter;

    invoke-direct {v0}, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->setOnLeadingListener(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;)Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;

    .line 4
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->setLeadingLoadStateAdapter(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setLeadingLoadStateAdapter(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter<",
            "*>;)",
            "Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->b:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;

    return-object p0
.end method

.method public final setTrailingLoadStateAdapter(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;)Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;
    .locals 4
    .param p1    # Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;)Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    .line 4
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->setTrailingLoadStateAdapter(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setTrailingLoadStateAdapter(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter<",
            "*>;)",
            "Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->c:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    return-object p0
.end method
