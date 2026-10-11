.class public Lorg/apache/xerces/stax/ImmutableLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/Location;


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xerces/stax/ImmutableLocation;->e:I

    iput p2, p0, Lorg/apache/xerces/stax/ImmutableLocation;->f:I

    iput p3, p0, Lorg/apache/xerces/stax/ImmutableLocation;->g:I

    iput-object p4, p0, Lorg/apache/xerces/stax/ImmutableLocation;->h:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/xerces/stax/ImmutableLocation;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/Location;)V
    .locals 6

    .line 2
    invoke-interface {p1}, Ljavax/xml/stream/Location;->getCharacterOffset()I

    move-result v1

    invoke-interface {p1}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v2

    invoke-interface {p1}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/xerces/stax/ImmutableLocation;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/stax/ImmutableLocation;->e:I

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/stax/ImmutableLocation;->f:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/stax/ImmutableLocation;->g:I

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/ImmutableLocation;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/ImmutableLocation;->i:Ljava/lang/String;

    return-object p0
.end method
