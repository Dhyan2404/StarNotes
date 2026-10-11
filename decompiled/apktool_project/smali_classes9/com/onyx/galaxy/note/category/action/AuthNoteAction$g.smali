.class public final Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/AuthNoteAction;->s(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g;->e:Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/AuthNoteAction;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/action/AuthNoteAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getNoteLockPasswordOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;->execute()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction$g;->a(Lcom/onyx/galaxy/note/category/action/AuthNoteAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
