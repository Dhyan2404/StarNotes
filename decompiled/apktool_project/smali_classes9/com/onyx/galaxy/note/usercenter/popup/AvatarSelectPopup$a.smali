.class public final Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;->q()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup$a;->e:Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup$a;->e:Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;->access$getPickFileFunc$p(Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup$a;->a(Z)V

    return-void
.end method
