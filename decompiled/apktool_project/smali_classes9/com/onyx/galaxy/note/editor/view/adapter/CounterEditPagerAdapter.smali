.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;
.super Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;",
        "Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;",
        "",
        "",
        "",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "createFragment",
        "Landroid/os/Bundle;",
        "q",
        "Landroid/os/Bundle;",
        "dataArguments",
        "",
        "r",
        "Ljava/util/List;",
        "fragmentData",
        "fragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final q:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;->q:Landroid/os/Bundle;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;->r:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;-><init>()V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;->q:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
