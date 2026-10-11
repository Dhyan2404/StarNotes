.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->sendVerifyCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->f:Landroid/app/Activity;

    iput-object p3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyType()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->f:Landroid/app/Activity;

    iget-object v4, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->h:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;-><init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
