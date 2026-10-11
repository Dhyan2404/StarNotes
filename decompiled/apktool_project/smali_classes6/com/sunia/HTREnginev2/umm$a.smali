.class public Lcom/sunia/HTREnginev2/umm$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/umm;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/umm;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/umm;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/umm$a;->a:Lcom/sunia/HTREnginev2/umm;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/umm$a;->a:Lcom/sunia/HTREnginev2/umm;

    iget-object p1, p1, Lcom/google/android/material/shape/ShapeableDelegate;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/umm$a;->a:Lcom/sunia/HTREnginev2/umm;

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->e:Landroid/graphics/Path;

    invoke-static {p2, p0}, Lcom/sunia/HTREnginev2/lif;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
