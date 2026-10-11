.class public final synthetic Lcom/sunia/HTREnginev2/u7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u7f;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/u7f;->f:Z

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u7f;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/u7f;->f:Z

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->b(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;ZLandroid/view/View;Z)V

    return-void
.end method
