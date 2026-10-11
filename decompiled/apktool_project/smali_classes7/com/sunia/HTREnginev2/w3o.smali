.class public final synthetic Lcom/sunia/HTREnginev2/w3o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w3o;->a:Landroid/view/View;

    iput p2, p0, Lcom/sunia/HTREnginev2/w3o;->b:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w3o;->a:Landroid/view/View;

    iget p0, p0, Lcom/sunia/HTREnginev2/w3o;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/android/sdk/extension/ViewKt;->a(Landroid/view/View;ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
