.class public final synthetic Lcom/sunia/HTREnginev2/q7m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q7m;->a:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    return-void
.end method


# virtual methods
.method public final onSoftInputChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q7m;->a:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->a(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;I)V

    return-void
.end method
