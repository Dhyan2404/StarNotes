.class public final synthetic Lcom/sunia/HTREnginev2/y2e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

.field public final synthetic f:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y2e;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/y2e;->f:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y2e;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y2e;->f:Landroid/widget/LinearLayout;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->c(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method
