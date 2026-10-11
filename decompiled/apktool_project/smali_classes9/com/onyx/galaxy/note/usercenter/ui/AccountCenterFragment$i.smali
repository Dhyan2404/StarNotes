.class public final Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->L0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$i;->e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$i;->e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$getAccountViewModel(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    return-void
.end method
