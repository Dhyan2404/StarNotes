.class public abstract Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;
.super Lcom/chad/library/adapter4/loadState/LoadStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/chad/library/adapter4/loadState/LoadStateAdapter<",
        "TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001a\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001.B\u0007\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00028\u0000H\u0017\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0011\u001a\u00020\tJ\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\tH\u0002R(\u0010\u001d\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00128\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010 \u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010)\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010\u000fR\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u001f\u00a8\u0006/"
    }
    d2 = {
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH",
        "Lcom/chad/library/adapter4/loadState/LoadStateAdapter;",
        "Lcom/chad/library/adapter4/loadState/LoadState;",
        "loadState",
        "",
        "displayLoadStateAsItem",
        "holder",
        "",
        "onViewAttachedToWindow",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "",
        "currentPosition",
        "checkPreload$com_github_CymChad_brvah",
        "(I)V",
        "checkPreload",
        "invokeLoad",
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;",
        "listener",
        "setOnLeadingListener",
        "",
        "toString",
        "c",
        "<set-?>",
        "g",
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;",
        "getOnLeadingListener",
        "()Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;",
        "onLeadingListener",
        "h",
        "Z",
        "isLoadEnable",
        "()Z",
        "setLoadEnable",
        "(Z)V",
        "i",
        "I",
        "getPreloadSize",
        "()I",
        "setPreloadSize",
        "preloadSize",
        "j",
        "mDelayNextLoadFlag",
        "<init>",
        "()V",
        "OnLeadingListener",
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
.field public g:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Z

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->h:Z

    return-void
.end method

.method public static synthetic b(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->d(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;)V

    return-void
.end method

.method public static final d(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->j:Z

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->invokeLoad()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->g:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;->isAllowLoading()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->j:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getLoadState()Lcom/chad/library/adapter4/loadState/LoadState;

    move-result-object v0

    instance-of v0, v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getLoadState()Lcom/chad/library/adapter4/loadState/LoadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->j:Z

    new-instance v1, Lcom/sunia/HTREnginev2/mxi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mxi;-><init>(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->invokeLoad()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final checkPreload$com_github_CymChad_brvah(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->i:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->c()V

    :cond_1
    return-void
.end method

.method public displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/loadState/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "loadState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    return p0
.end method

.method public final getOnLeadingListener()Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->g:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;

    return-object p0
.end method

.method public final getPreloadSize()I
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->i:I

    return p0
.end method

.method public final invokeLoad()V
    .locals 1

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$Loading;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->g:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;->onLoad()V

    :cond_0
    return-void
.end method

.method public final isLoadEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->h:Z

    return p0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->c()V

    return-void
.end method

.method public final setLoadEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->h:Z

    return-void
.end method

.method public final setOnLeadingListener(Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;)Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;",
            ")",
            "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter<",
            "TVH;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->g:Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;

    return-object p0
.end method

.method public final setPreloadSize(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            LeadingLoadStateAdapter ->\n            [isLoadEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],\n            [preloadSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],\n            [loadState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getLoadState()Lcom/chad/library/adapter4/loadState/LoadState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
