.class public final synthetic Lcom/sunia/HTREnginev2/kuj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/NoteApp;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/NoteApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kuj;->e:Lcom/onyx/galaxy/note/NoteApp;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kuj;->e:Lcom/onyx/galaxy/note/NoteApp;

    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/NoteApp;->a(Lcom/onyx/galaxy/note/NoteApp;Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V

    return-void
.end method
