.class public Lcom/sunia/HTREnginev2/d4e;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0xfffe

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d4e;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/sdm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [B

    invoke-interface {p0, p1}, Ljava/io/DataInput;->readFully([B)V

    new-instance p0, Lcom/sunia/HTREnginev2/d4e;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/d4e;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d4e;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
