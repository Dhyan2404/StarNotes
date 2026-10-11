.class public final synthetic Lcom/sunia/HTREnginev2/umj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/umj;->e:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/umj;->e:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->b(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    return-void
.end method
