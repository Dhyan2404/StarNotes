.class public final synthetic Lcom/onyx/galaxy/note/category/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

.field public final synthetic g:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/t;->e:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/t;->f:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/ui/t;->g:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/t;->e:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/t;->f:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/t;->g:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->a(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method
