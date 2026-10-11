.class public final synthetic Lcom/onyx/galaxy/note/category/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/v;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/v;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$2;->a(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    return-void
.end method
