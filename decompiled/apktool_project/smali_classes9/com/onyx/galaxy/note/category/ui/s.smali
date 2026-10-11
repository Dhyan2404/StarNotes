.class public final synthetic Lcom/onyx/galaxy/note/category/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/s;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/s;->f:Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/s;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/s;->f:Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$2;->a(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;)V

    return-void
.end method
