.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "Landroid/net/Uri;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->access$getPictureAdapter$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->access$updateUploadPictureTitle(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->access$updateFooter(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    return-void
.end method
