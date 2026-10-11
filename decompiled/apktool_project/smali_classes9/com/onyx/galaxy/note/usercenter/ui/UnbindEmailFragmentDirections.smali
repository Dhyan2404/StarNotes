.class public Lcom/onyx/galaxy/note/usercenter/ui/UnbindEmailFragmentDirections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/usercenter/ui/UnbindEmailFragmentDirections$UnbindEmailToBindEmail;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unbindEmailToBindEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/UnbindEmailFragmentDirections$UnbindEmailToBindEmail;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/UnbindEmailFragmentDirections$UnbindEmailToBindEmail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/UnbindEmailFragmentDirections$UnbindEmailToBindEmail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/UnbindEmailFragmentDirections$a;)V

    return-object v0
.end method
