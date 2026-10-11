.class public final Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->F0(Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;->e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;->setNickname(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/account/action/UpdateAccountAction;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/account/action/UpdateAccountAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;->a(Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
