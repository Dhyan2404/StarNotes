.class public Lcom/sunia/HTREnginev2/cml;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const v0, 0xffdd

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    iput p1, p0, Lcom/sunia/HTREnginev2/cml;->b:I

    return-void
.end method

.method public static b(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/cml;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/cml;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result p0

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/cml;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected length of DRI segment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRI["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/cml;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
