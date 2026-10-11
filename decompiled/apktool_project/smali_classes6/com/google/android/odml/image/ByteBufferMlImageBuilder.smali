.class public Lcom/google/android/odml/image/ByteBufferMlImageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:I

.field public f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->a:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->b:I

    iput p3, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->c:I

    iput p4, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->e:I

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p1, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/odml/image/MlImage;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Lcom/google/android/odml/image/MlImage;

    new-instance v1, Lcom/sunia/HTREnginev2/hkp;

    iget-object v0, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->a:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->d:I

    invoke-direct {v1, v0, v2}, Lcom/sunia/HTREnginev2/hkp;-><init>(Ljava/nio/ByteBuffer;I)V

    iget v2, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->e:I

    iget-object v3, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->f:Landroid/graphics/Rect;

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->b:I

    iget v7, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->c:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/odml/image/MlImage;-><init>(Lcom/sunia/HTREnginev2/pkp;ILandroid/graphics/Rect;JII)V

    return-object v8
.end method

.method public setRotation(I)Lcom/google/android/odml/image/ByteBufferMlImageBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/odml/image/MlImage;->w(I)V

    iput p1, p0, Lcom/google/android/odml/image/ByteBufferMlImageBuilder;->e:I

    return-object p0
.end method
