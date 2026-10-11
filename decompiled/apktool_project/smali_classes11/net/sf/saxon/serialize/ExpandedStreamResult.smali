.class public Lnet/sf/saxon/serialize/ExpandedStreamResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public b:Ljava/util/Properties;

.field public final c:Ljava/lang/String;

.field public d:Ljava/io/Writer;

.field public e:Ljava/io/OutputStream;

.field public f:Lnet/sf/saxon/serialize/charcode/CharacterSet;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->h:Z

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    iput-object p3, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->b:Ljava/util/Properties;

    const-string p2, "encoding"

    invoke-virtual {p3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    const-string v0, "UTF16"

    const-string v1, "UTF8"

    if-nez p2, :cond_0

    iput-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    const-string v1, "UTF-16"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object p2, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->f:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getCharacterSetFactory()Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;->getCharacterSet(Ljava/lang/String;)Lnet/sf/saxon/serialize/charcode/CharacterSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->f:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    :cond_3
    const-string p1, "byte-order-mark"

    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "no"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "UTF-16BE"

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->f:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    instance-of p2, p1, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    if-nez p2, :cond_5

    invoke-interface {p1}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method

.method public static makeWritableOutputFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    :try_start_1
    const-string v2, "file"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "SXRD0004"

    if-nez v2, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot write to URI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot write to a directory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create output file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)Lnet/sf/saxon/str/UnicodeWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "UTF8"

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lnet/sf/saxon/serialize/UTF8Writer;

    iget-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    invoke-direct {p1, v1}, Lnet/sf/saxon/serialize/UTF8Writer;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->b(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/str/UnicodeWriterToWriter;

    invoke-direct {v1, p1}, Lnet/sf/saxon/str/UnicodeWriterToWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Failed to create a UTF8 output writer"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SESU0007"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "UTF8"

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    const-string v1, "iso-646"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    const-string v1, "iso646"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lnet/sf/saxon/serialize/UTF8Writer;

    iget-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    invoke-direct {p1, v1}, Lnet/sf/saxon/serialize/UTF8Writer;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    invoke-direct {v2, v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;

    :goto_2
    iget-object p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Failed to create a UTF8 output writer"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SESU0007"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getCharacterSet()Lnet/sf/saxon/serialize/charcode/CharacterSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->f:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;

    return-object p0
.end method

.method public isMustCloseAfterUse()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->h:Z

    return p0
.end method

.method public obtainOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->makeWritableOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->e:Ljava/io/OutputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->h:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Result has no system ID, writer, or output stream defined"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/str/UnicodeWriterToWriter;

    iget-object p0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/UnicodeWriterToWriter;-><init>(Ljava/io/Writer;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->a(Ljava/io/OutputStream;)Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object p0

    return-object p0
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->d:Ljava/io/Writer;

    instance-of v0, p1, Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->b:Ljava/util/Properties;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->b:Ljava/util/Properties;

    const-string v1, "encoding"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getCharacterSetFactory()Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->b:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;->getCharacterSet(Ljava/util/Properties;)Lnet/sf/saxon/serialize/charcode/CharacterSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/ExpandedStreamResult;->f:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    :cond_0
    return-void
.end method

.method public usesWriter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
