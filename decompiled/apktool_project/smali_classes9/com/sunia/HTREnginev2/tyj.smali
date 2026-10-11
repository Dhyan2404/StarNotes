.class public final synthetic Lcom/sunia/HTREnginev2/tyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tyj;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tyj;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->d(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    return-void
.end method
