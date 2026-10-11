.class public Lnet/sf/saxon/expr/parser/Loc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Location;


# static fields
.field public static NONE:Lnet/sf/saxon/expr/parser/Loc;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lnet/sf/saxon/expr/parser/Loc;->e:Ljava/lang/String;

    .line 8
    iput p2, p0, Lnet/sf/saxon/expr/parser/Loc;->f:I

    .line 9
    iput p3, p0, Lnet/sf/saxon/expr/parser/Loc;->g:I

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/sf/saxon/expr/parser/Loc;->g:I

    .line 3
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/Loc;->e:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/expr/parser/Loc;->f:I

    .line 5
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/expr/parser/Loc;->g:I

    return-void
.end method

.method public static isUnknown(Lnet/sf/saxon/s9api/Location;)Z
    .locals 1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static makeFromSax(Lorg/xml/sax/Locator;)Lnet/sf/saxon/expr/parser/Loc;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/Loc;->g:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/Loc;->f:I

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Loc;->e:Ljava/lang/String;

    return-object p0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method
