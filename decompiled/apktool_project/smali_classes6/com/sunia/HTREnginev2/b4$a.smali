.class public final Lcom/sunia/HTREnginev2/b4$a;
.super Lcom/sunia/HTREnginev2/t3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/b4$b;

.field public final synthetic b:Lcom/sunia/HTREnginev2/b4;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/b4;I)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b4$a;->b:Lcom/sunia/HTREnginev2/b4;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/t3;-><init>()V

    new-instance p1, Lcom/sunia/HTREnginev2/b4$b;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/b4$b;-><init>(I)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b4$a;->a:Lcom/sunia/HTREnginev2/b4$b;

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b4$a;->b:Lcom/sunia/HTREnginev2/b4;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/b4$a;->a:Lcom/sunia/HTREnginev2/b4$b;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/b4$b;->f()[B

    move-result-object v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b4$a;->a:Lcom/sunia/HTREnginev2/b4$b;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/b4$b;->j()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/b4;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/b4$a;->a:Lcom/sunia/HTREnginev2/b4$b;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/b4$a;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/b4$a;->a:Lcom/sunia/HTREnginev2/b4$b;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/b4$b;->w(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/b4$a;->a:Lcom/sunia/HTREnginev2/b4$b;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/b4$a;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b4$a;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method
