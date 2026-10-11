.class public Lnet/sf/saxon/serialize/UnicodeWriterResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Result;


# instance fields
.field public final e:Lnet/sf/saxon/str/UnicodeWriter;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeWriter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/serialize/UnicodeWriterResult;->f:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/serialize/UnicodeWriterResult;->e:Lnet/sf/saxon/str/UnicodeWriter;

    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/UnicodeWriterResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/UnicodeWriterResult;->e:Lnet/sf/saxon/str/UnicodeWriter;

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/UnicodeWriterResult;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
