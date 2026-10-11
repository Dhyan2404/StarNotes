.class public Lcom/sunia/HTREnginev2/nh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/d6j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/nh$a;,
        Lcom/sunia/HTREnginev2/nh$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/nh$b;

.field public final b:Lcom/sunia/HTREnginev2/g6h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/g6h<",
            "Lcom/sunia/HTREnginev2/nh$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/nh$b;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/nh$b;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/nh;->a:Lcom/sunia/HTREnginev2/nh$b;

    new-instance v0, Lcom/sunia/HTREnginev2/g6h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g6h;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/nh;->b:Lcom/sunia/HTREnginev2/g6h;

    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/nh;->a(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nh;->a:Lcom/sunia/HTREnginev2/nh$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/nh$b;->e(IILandroid/graphics/Bitmap$Config;)Lcom/sunia/HTREnginev2/nh$a;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nh;->b:Lcom/sunia/HTREnginev2/g6h;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/g6h;->a(Lcom/sunia/HTREnginev2/e5l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/sunia/HTREnginev2/nh;->a(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/nh;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nh;->a:Lcom/sunia/HTREnginev2/nh$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/nh$b;->e(IILandroid/graphics/Bitmap$Config;)Lcom/sunia/HTREnginev2/nh$a;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nh;->b:Lcom/sunia/HTREnginev2/g6h;

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/g6h;->d(Lcom/sunia/HTREnginev2/e5l;Ljava/lang/Object;)V

    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nh;->b:Lcom/sunia/HTREnginev2/g6h;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g6h;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nh;->b:Lcom/sunia/HTREnginev2/g6h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
