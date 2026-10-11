.class public final synthetic Lcom/sunia/HTREnginev2/rfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter$CategoryHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter$CategoryHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rfe;->e:Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rfe;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter$CategoryHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rfe;->e:Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rfe;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter$CategoryHolder;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;->o(Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter$CategoryHolder;Landroid/view/View;)V

    return-void
.end method
