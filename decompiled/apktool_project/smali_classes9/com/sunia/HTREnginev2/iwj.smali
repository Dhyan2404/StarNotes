.class public final synthetic Lcom/sunia/HTREnginev2/iwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iwj;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iwj;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    check-cast p1, Landroidx/core/app/MultiWindowModeChangedInfo;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->G(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Landroidx/core/app/MultiWindowModeChangedInfo;)V

    return-void
.end method
