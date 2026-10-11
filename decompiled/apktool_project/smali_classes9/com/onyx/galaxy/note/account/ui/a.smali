.class public final synthetic Lcom/onyx/galaxy/note/account/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/galaxy/note/account/ui/LoginFragment;


# direct methods
.method public synthetic constructor <init>(ILcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/galaxy/note/account/ui/a;->e:I

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/ui/a;->f:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/account/ui/a;->e:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/a;->f:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->a(ILcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method
