.class public final Lcom/sunia/HTREnginev2/j6j$b;
.super Lcom/sunia/HTREnginev2/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/j6j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljavax/crypto/Mac;

.field public c:Z


# direct methods
.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/n2;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/j6j$b;->b:Ljavax/crypto/Mac;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/crypto/Mac;Lcom/sunia/HTREnginev2/j6j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/j6j$b;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method


# virtual methods
.method public b(B)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j6j$b;->f()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6j$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j6j$b;->f()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6j$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public d([B)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j6j$b;->f()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6j$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method public e([BII)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j6j$b;->f()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6j$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/j6j$b;->c:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public hash()Lcom/google/common/hash/HashCode;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/j6j$b;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/j6j$b;->c:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6j$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method
