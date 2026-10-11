.class public final Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->o()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$g;->e:Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->Companion:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$g;->e:Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->access$getActivityContext$p(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;->open(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$g;->a(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    return-void
.end method
