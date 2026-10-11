.class public final Lcom/sunia/HTREnginev2/yjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/pkp;


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Lcom/google/android/odml/image/ImageProperties;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yjp;->a:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sunia/HTREnginev2/ohp;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ohp;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v1, Lcom/sunia/HTREnginev2/pjp;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/flp;->a(I)Lcom/sunia/HTREnginev2/flp;

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/flp;->b(I)Lcom/sunia/HTREnginev2/flp;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/flp;->c()Lcom/google/android/odml/image/ImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yjp;->b:Lcom/google/android/odml/image/ImageProperties;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yjp;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/odml/image/ImageProperties;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yjp;->b:Lcom/google/android/odml/image/ImageProperties;

    return-object p0
.end method

.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yjp;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
