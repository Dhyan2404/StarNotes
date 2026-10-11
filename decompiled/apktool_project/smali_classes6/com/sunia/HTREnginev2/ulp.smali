.class public final Lcom/sunia/HTREnginev2/ulp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/pkp;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field public final a:Landroid/media/Image;

.field public final b:Lcom/google/android/odml/image/ImageProperties;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ulp;->a:Landroid/media/Image;

    new-instance v0, Lcom/sunia/HTREnginev2/ohp;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ohp;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/flp;->b(I)Lcom/sunia/HTREnginev2/flp;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0x23

    if-eq p1, v1, :cond_3

    const/16 v1, 0x100

    if-eq p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/flp;->a(I)Lcom/sunia/HTREnginev2/flp;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/flp;->c()Lcom/google/android/odml/image/ImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ulp;->b:Lcom/google/android/odml/image/ImageProperties;

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ulp;->a:Landroid/media/Image;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/odml/image/ImageProperties;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ulp;->b:Lcom/google/android/odml/image/ImageProperties;

    return-object p0
.end method

.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ulp;->a:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    return-void
.end method
