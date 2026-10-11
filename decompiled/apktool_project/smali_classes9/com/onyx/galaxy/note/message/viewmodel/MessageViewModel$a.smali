.class public final Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;->load()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel$a;->e:Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/message/action/FetchMessageAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/message/action/FetchMessageAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel$a;->e:Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;->getUnreadCount()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->getUnreadCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel$a;->a(Lcom/onyx/galaxy/note/message/action/FetchMessageAction;)V

    return-void
.end method
