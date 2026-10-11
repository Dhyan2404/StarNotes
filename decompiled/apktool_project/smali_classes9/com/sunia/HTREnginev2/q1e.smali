.class public final synthetic Lcom/sunia/HTREnginev2/q1e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/view/ColorInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/view/ColorInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q1e;->e:Lcom/onyx/galaxy/note/ui/view/ColorInputView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q1e;->e:Lcom/onyx/galaxy/note/ui/view/ColorInputView;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->a(Lcom/onyx/galaxy/note/ui/view/ColorInputView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
