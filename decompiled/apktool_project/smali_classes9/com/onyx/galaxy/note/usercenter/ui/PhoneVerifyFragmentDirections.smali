.class public Lcom/onyx/galaxy/note/usercenter/ui/PhoneVerifyFragmentDirections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/usercenter/ui/PhoneVerifyFragmentDirections$PhoneVerifyToPasswordReset;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static phoneVerifyToPasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/PhoneVerifyFragmentDirections$PhoneVerifyToPasswordReset;
    .locals 7
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
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/onyx/galaxy/note/usercenter/ui/PhoneVerifyFragmentDirections$PhoneVerifyToPasswordReset;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/usercenter/ui/PhoneVerifyFragmentDirections$PhoneVerifyToPasswordReset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/PhoneVerifyFragmentDirections$a;)V

    return-object v6
.end method
