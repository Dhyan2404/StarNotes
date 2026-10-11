.class public final Lcom/sunia/HTREnginev2/zbi;
.super Lcom/sunia/HTREnginev2/gd;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const v0, 0xffe2

    const-string v1, "ICC_PROFILE"

    invoke-direct {p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/gd;-><init>(ILjava/lang/String;[B)V

    return-void
.end method

.method public static d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/zbi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [B

    invoke-interface {p0, p1}, Ljava/io/DataInput;->readFully([B)V

    new-instance p0, Lcom/sunia/HTREnginev2/zbi;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/zbi;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICC_PROFILE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gd;->c:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gd;->c:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gd;->c:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
