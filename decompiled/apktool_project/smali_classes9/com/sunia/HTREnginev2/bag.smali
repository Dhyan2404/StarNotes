.class public final synthetic Lcom/sunia/HTREnginev2/bag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bag;->e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bag;->f:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bag;->e:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bag;->f:Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->n(Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemFeatureResourceBinding;Landroid/view/View;)V

    return-void
.end method
