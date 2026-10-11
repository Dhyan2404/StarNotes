.class public final synthetic Lcom/sunia/HTREnginev2/t7m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t7m;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t7m;->f:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t7m;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t7m;->f:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->g(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    return-void
.end method
