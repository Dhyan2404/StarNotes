.class public final synthetic Lcom/sunia/HTREnginev2/bki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bki;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bki;->f:Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bki;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bki;->f:Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->d(Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;Z)V

    return-void
.end method
