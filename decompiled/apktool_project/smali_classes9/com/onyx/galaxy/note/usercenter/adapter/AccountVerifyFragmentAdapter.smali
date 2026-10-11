.class public final Lcom/onyx/galaxy/note/usercenter/adapter/AccountVerifyFragmentAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/adapter/AccountVerifyFragmentAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "createFragment",
        "getItemCount",
        "",
        "",
        "o",
        "Ljava/util/List;",
        "fragmentTags",
        "fragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Ljava/util/List;)V",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentTags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/adapter/AccountVerifyFragmentAdapter;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/adapter/AccountVerifyFragmentAdapter;->o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "Password"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;-><init>()V

    goto :goto_1

    :sswitch_1
    const-string p1, "Phone"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPhoneFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPhoneFragment;-><init>()V

    goto :goto_1

    :sswitch_2
    const-string p1, "Email"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyEmailFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyEmailFragment;-><init>()V

    goto :goto_1

    :sswitch_3
    const-string p1, "Wechat"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;-><init>()V

    goto :goto_1

    :sswitch_4
    const-string p1, "Huawei"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment;-><init>()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance p0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7e8471f9 -> :sswitch_4
        -0x65cc88ba -> :sswitch_3
        0x3ff5b7c -> :sswitch_2
        0x4984d4e -> :sswitch_1
        0x4c641ebb -> :sswitch_0
    .end sparse-switch
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/adapter/AccountVerifyFragmentAdapter;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
