.class public final synthetic Lcom/sunia/HTREnginev2/v6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/Function;


# instance fields
.field public final synthetic a:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/v6h;->a:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/v6h;->a:F

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/trans/android/hb/HBGraphics;->f(FLandroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method
