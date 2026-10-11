.class public Lcom/sunia/HTREnginev2/v9$a;
.super Lcom/sunia/HTREnginev2/v9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/v9;->j(Ljava/nio/ByteBuffer;)Lcom/sunia/HTREnginev2/v9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$buffer"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/v9;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    return p0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0
.end method

.method public h(I)Lcom/sunia/HTREnginev2/v9;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    return-object p0
.end method

.method public i()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method
