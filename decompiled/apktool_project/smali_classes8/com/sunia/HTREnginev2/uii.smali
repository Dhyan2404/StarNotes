.class public final synthetic Lcom/sunia/HTREnginev2/uii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uii;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    iput p2, p0, Lcom/sunia/HTREnginev2/uii;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uii;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    iget p0, p0, Lcom/sunia/HTREnginev2/uii;->f:I

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->s(Lio/reactivex/rxjava3/subjects/ReplaySubject;I)V

    return-void
.end method
