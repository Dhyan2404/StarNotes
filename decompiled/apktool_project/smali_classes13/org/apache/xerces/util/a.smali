.class public Lorg/apache/xerces/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/XMLLocator;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/util/a;->b:Ljava/lang/String;

    iput p3, p0, Lorg/apache/xerces/util/a;->c:I

    iput p4, p0, Lorg/apache/xerces/util/a;->d:I

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCharacterOffset()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/a;->c:I

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/a;->d:I

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
