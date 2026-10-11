.class public final Lcom/sunia/HTREnginev2/hkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/pkp;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Lcom/google/android/odml/image/ImageProperties;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hkp;->a:Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/sunia/HTREnginev2/ohp;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/ohp;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/flp;->b(I)Lcom/sunia/HTREnginev2/flp;

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/flp;->a(I)Lcom/sunia/HTREnginev2/flp;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/flp;->c()Lcom/google/android/odml/image/ImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hkp;->b:Lcom/google/android/odml/image/ImageProperties;

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hkp;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/odml/image/ImageProperties;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hkp;->b:Lcom/google/android/odml/image/ImageProperties;

    return-object p0
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
