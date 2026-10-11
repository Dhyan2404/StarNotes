.class final Lcom/onyx/galaxy/note/category/action/AuthNoteAction$showAuthNotePasswordDialog$authContext$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/AuthNoteAction;->r()Lio/reactivex/rxjava3/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;",
        "pwd",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $subject:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/category/action/AuthNoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/AuthNoteAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/AuthNoteAction;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$showAuthNotePasswordDialog$authContext$1$1;->this$0:Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$showAuthNotePasswordDialog$authContext$1$1;->$subject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$showAuthNotePasswordDialog$authContext$1$1;->invoke(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$showAuthNotePasswordDialog$authContext$1$1;->this$0:Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$showAuthNotePasswordDialog$authContext$1$1;->$subject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;->access$verifyPassword(Lcom/onyx/galaxy/note/category/action/AuthNoteAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Ljava/lang/String;)V

    return-void
.end method
