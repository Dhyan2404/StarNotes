.class public final Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$slideLayoutListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$slideLayoutListener$1",
        "Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;",
        "onAnimationEnd",
        "",
        "onAnimationStart",
        "onSlideStateChanged",
        "isExpanded",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$slideLayoutListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$slideLayoutListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSlideAnimating()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$slideLayoutListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSlideAnimating()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSlideStateChanged(Z)V
    .locals 0

    return-void
.end method
