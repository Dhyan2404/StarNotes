.class public final synthetic Lcom/sunia/HTREnginev2/kyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kyn;->e:Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kyn;->e:Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment$loadWebpage$callback$1;->e(Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment;)V

    return-void
.end method
