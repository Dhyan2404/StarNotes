.class public Lcom/sunia/HTREnginev2/gd;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    const-string p1, "identifier"

    invoke-static {p2, p1}, Lcom/twelvemonkeys/lang/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/gd;->c:[B

    return-void
.end method

.method public static c(ILjava/lang/String;Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/gd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffee

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "JFIF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/tqi;->e(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/tqi;

    move-result-object p0

    return-object p0

    :cond_0
    :pswitch_1
    const-string v0, "JFXX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/vqi;->e(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/vqi;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_2
    const-string v0, "ICC_PROFILE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/zbi;->d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/zbi;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "Adobe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/d9;->d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/d9;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    add-int/lit8 p3, p3, -0x2

    new-array p3, p3, [B

    invoke-interface {p2, p3}, Ljava/io/DataInput;->readFully([B)V

    new-instance p2, Lcom/sunia/HTREnginev2/gd;

    invoke-direct {p2, p0, p1, p3}, Lcom/sunia/HTREnginev2/gd;-><init>(ILjava/lang/String;[B)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0xffe0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public b()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gd;->c:[B

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-direct {v1, p0, v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[length: "

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
