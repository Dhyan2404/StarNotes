.class final Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->showPageWhiteSpaceGuide(Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/Context;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $anchorView:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

.field final synthetic $dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

.field final synthetic $guideInfo:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->$guideInfo:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->$anchorView:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->invoke(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->$guideInfo:Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 3
    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1$1;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;

    invoke-direct {v3, v4}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    .line 4
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lkotlin/jvm/functions/Function1;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;->$anchorView:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1, p1}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->show$default(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)V

    return-void
.end method
