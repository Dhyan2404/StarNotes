.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewPagerFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "createFragment",
        "getItemCount",
        "",
        "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
        "o",
        "Ljava/util/List;",
        "sidebarTypes",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/util/List;)V",
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
.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sidebarTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "closeAction"

    const-string v2, "editorBundle"

    const/4 v3, 0x0

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/common/base/BaseFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->getFullScreen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->getEditExcerptCommentArgs()Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->setEditExcerptCommentArgs(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getCloseAction$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->setCloseOnSelect(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setEditExcerptCommentArgs(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->getFullScreen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->setFullScreen(Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getCloseAction$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, p0

    :goto_0
    invoke-virtual {p1, v3}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->setCloseOnSelect(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->getFullScreen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->setSelectable(Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getCloseAction$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v3, p0

    :goto_1
    invoke-virtual {p1, v3}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->setCloseOnSelect(Lkotlin/jvm/functions/Function0;)V

    :goto_2
    move-object p0, p1

    goto/16 :goto_5

    :cond_9
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_a
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_b
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getDocManagerBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "docManagerBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_c
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->getFullScreen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->setSelectable(Z)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getDocOverViewThumbnailSizeType()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->setThumbnailSizeType(Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getCloseAction$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    move-object v3, v0

    :goto_3
    invoke-virtual {p1, v3}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->setCloseOnSelect(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getCurrentVisibleLevel$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->setCurrentVisibleLevel(I)V

    goto :goto_2

    :cond_e
    new-instance p1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->p:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    move-object v3, v0

    :goto_4
    invoke-virtual {p1, v3}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getCurrentVisibleLevel$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->setCurrentVisibleLevel(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->getFullScreen()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->setSelectable(Z)V

    goto/16 :goto_2

    :goto_5
    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;->o:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method
