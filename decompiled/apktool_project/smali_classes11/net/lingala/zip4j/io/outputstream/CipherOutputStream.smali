.class abstract Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/lingala/zip4j/crypto/Encrypter;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field private encrypter:Lnet/lingala/zip4j/crypto/Encrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/Encrypter;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/Encrypter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->close()V

    return-void
.end method

.method public closeEntry()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->closeEntry()V

    return-void
.end method

.method public getEncrypter()Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/Encrypter;

    return-object p0
.end method

.method public getNumberOfBytesWrittenForThisEntry()J
    .locals 2

    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->getNumberOfBytesWrittenForThisEntry()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/Encrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "[CZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/Encrypter;

    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/Encrypter;->encryptData([BII)I

    .line 4
    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write([BII)V

    return-void
.end method

.method public writeHeaders([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;->zipEntryOutputStream:Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;->write([B)V

    return-void
.end method
