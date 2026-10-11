.class public final Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3;->e:Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3$1;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3;->e:Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;)V

    const p0, 0x18e88

    invoke-virtual {v0, p1, p0, v1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->handleOnErrorCode(Ljava/lang/Throwable;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method
