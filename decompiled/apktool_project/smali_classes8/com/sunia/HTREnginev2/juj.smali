.class public final synthetic Lcom/sunia/HTREnginev2/juj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/juj;->e:Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/juj;->e:Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;->a(Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;Ljava/util/List;)V

    return-void
.end method
