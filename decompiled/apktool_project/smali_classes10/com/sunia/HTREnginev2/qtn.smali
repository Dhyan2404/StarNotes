.class public final Lcom/sunia/HTREnginev2/qtn;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qtn;->b:[B

    return-void
.end method

.method public static b(IILjava/io/DataInput;)Lcom/sunia/HTREnginev2/sdm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [B

    invoke-interface {p2, p1}, Ljava/io/DataInput;->readFully([B)V

    new-instance p2, Lcom/sunia/HTREnginev2/qtn;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/qtn;-><init>(I[B)V

    return-object p2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/sdm;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qtn;->b:[B

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unknown[%04x, length: %d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
