.class public final Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;
.super Ljava/io/FilterReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final e:Z

.field public f:I

.field public final synthetic g:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;Ljava/io/Reader;Z)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->g:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->f:I

    iput-boolean p3, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->e:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/FilterReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->f:I

    iget-object v1, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->g:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;

    invoke-static {v1}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;->a(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;)Lorg/apache/xerces/parsers/SecureProcessingConfiguration;

    move-result-object v1

    iget v3, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->f:I

    iget-boolean p0, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->e:Z

    invoke-virtual {v1, v3, v2, p0}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->checkEntitySizeLimits(IIZ)V

    :cond_0
    return v0
.end method

.method public read([CII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I

    move-result p1

    if-lez p1, :cond_0

    iget p2, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->f:I

    iget-object p2, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->g:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;

    invoke-static {p2}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;->a(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a;)Lorg/apache/xerces/parsers/SecureProcessingConfiguration;

    move-result-object p2

    iget p3, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->f:I

    iget-boolean p0, p0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$a$b;->e:Z

    invoke-virtual {p2, p3, p1, p0}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->checkEntitySizeLimits(IIZ)V

    :cond_0
    return p1
.end method
