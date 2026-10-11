.class public final synthetic Lcom/sunia/HTREnginev2/e4k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

.field public final synthetic g:Lcom/onyx/android/sdk/base/data/Orientation;

.field public final synthetic h:Lio/reactivex/rxjava3/subjects/ReplaySubject;


# direct methods
.method public synthetic constructor <init>(ZLcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/e4k;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e4k;->f:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/e4k;->g:Lcom/onyx/android/sdk/base/data/Orientation;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/e4k;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/e4k;->e:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/e4k;->f:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/e4k;->g:Lcom/onyx/android/sdk/base/data/Orientation;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e4k;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->d(ZLcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    return-void
.end method
