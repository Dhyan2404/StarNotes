.class public final synthetic Lcom/sunia/HTREnginev2/uan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uan;->e:Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uan;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uan;->e:Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uan;->f:Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->n(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;Landroid/view/View;)V

    return-void
.end method
