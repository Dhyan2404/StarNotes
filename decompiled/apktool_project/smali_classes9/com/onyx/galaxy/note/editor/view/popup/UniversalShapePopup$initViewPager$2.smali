.class public final Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initViewPager$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->R()V
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
        "com/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initViewPager$2",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initViewPager$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initViewPager$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)Lcom/onyx/galaxy/note/databinding/PopupUniversalShapeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupUniversalShapeBinding;->pageIndicator:Lcom/onyx/galaxy/note/ui/view/PageIndicatorView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initViewPager$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$getPageDataList$p(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorView;->setIndicatorIndex(II)V

    return-void
.end method
