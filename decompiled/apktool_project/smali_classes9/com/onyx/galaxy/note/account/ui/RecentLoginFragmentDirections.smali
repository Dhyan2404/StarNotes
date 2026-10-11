.class public Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionFragmentLoginToFragmentBindPhone()Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$ActionFragmentLoginToFragmentBindPhone;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections$a;)V

    return-object v0
.end method

.method public static gotoSettingsHelpAndFeedbackFragment()Landroidx/navigation/NavDirections;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    sget v1, Lcom/onyx/galaxy/note/R$id;->goto_settings_help_and_feedback_fragment:I

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method
