.class public final synthetic Lcom/sunia/HTREnginev2/evi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/data/LassoElementType;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;Lcom/onyx/galaxy/note/editor/data/LassoElementType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/evi;->e:Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/evi;->f:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/evi;->e:Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/evi;->f:Lcom/onyx/galaxy/note/editor/data/LassoElementType;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;->l(Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;Lcom/onyx/galaxy/note/editor/data/LassoElementType;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
