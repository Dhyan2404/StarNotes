.class public final synthetic Lcom/sunia/HTREnginev2/wuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wuk;->e:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wuk;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wuk;->e:Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wuk;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;->n(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
