.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->t1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$r;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Companion:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;->newInstance(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$r;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$r;->a(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)V

    return-void
.end method
