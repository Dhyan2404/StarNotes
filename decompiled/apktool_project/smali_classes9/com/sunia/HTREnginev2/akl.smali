.class public final synthetic Lcom/sunia/HTREnginev2/akl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/akl;->e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/akl;->e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->l(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Z)V

    return-void
.end method
