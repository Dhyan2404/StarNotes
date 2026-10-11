.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageSelected",
        "",
        "position",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->selectTab(Lcom/google/android/material/tabs/TabLayout;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->fullscreenTabLayout:Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;

    const-string v1, "fullscreenTabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->selectTab(Lcom/google/android/material/tabs/TabLayout;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->bottomTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "bottomTabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->selectTab(Lcom/google/android/material/tabs/TabLayout;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->finish:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$supportSelectItem(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$updateThumbnailSizeView(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;->a:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getCurrNoteOutlineType(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsDocSidebarEvent;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/event/StatisticsDocSidebarEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
