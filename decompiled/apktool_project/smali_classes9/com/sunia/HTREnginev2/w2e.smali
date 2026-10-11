.class public final synthetic Lcom/sunia/HTREnginev2/w2e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w2e;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    iput p2, p0, Lcom/sunia/HTREnginev2/w2e;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w2e;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    iget p0, p0, Lcom/sunia/HTREnginev2/w2e;->f:I

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->a(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;ILandroid/view/View;)V

    return-void
.end method
