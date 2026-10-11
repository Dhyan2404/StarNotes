.class public final synthetic Lcom/sunia/HTREnginev2/mvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/ReplaySubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mvj;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mvj;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->m(Lio/reactivex/rxjava3/subjects/ReplaySubject;Landroid/content/DialogInterface;)V

    return-void
.end method
