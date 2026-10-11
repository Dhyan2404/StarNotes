.class public final synthetic Lcom/sunia/HTREnginev2/vuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter$CategoryHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter$CategoryHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vuk;->e:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vuk;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter$CategoryHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vuk;->e:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vuk;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter$CategoryHolder;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;->o(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter$CategoryHolder;Landroid/view/View;)V

    return-void
.end method
