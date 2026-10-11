.class public final synthetic Lcom/onyx/galaxy/note/category/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/g;->e:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/g;->f:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/g;->e:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/g;->f:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->a(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V

    return-void
.end method
