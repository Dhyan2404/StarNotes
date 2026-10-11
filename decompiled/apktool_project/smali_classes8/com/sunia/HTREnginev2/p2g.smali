.class public final synthetic Lcom/sunia/HTREnginev2/p2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/ReplaySubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p2g;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p2g;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->m(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    return-void
.end method
