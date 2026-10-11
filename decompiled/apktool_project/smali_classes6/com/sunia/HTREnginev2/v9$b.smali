.class public Lcom/sunia/HTREnginev2/v9$b;
.super Lcom/sunia/HTREnginev2/v9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/v9;->m([BII)Lcom/sunia/HTREnginev2/v9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$bytes",
            "val$offset",
            "val$length"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v9$b;->b:[B

    iput p2, p0, Lcom/sunia/HTREnginev2/v9$b;->c:I

    iput p3, p0, Lcom/sunia/HTREnginev2/v9$b;->d:I

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/v9;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9$b;->b:[B

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/v9$b;->c:I

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/v9$b;->d:I

    return p0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/v9$b;->a:I

    return p0
.end method

.method public h(I)Lcom/sunia/HTREnginev2/v9;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sunia/HTREnginev2/v9$b;->d:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/sunia/HTREnginev2/v9$b;->a:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/v9$b;->d:I

    iget p0, p0, Lcom/sunia/HTREnginev2/v9$b;->a:I

    sub-int/2addr v0, p0

    return v0
.end method
