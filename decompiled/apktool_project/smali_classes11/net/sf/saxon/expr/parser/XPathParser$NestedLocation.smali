.class public Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/XPathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedLocation"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/s9api/Location;

.field public final f:I

.field public final g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Location;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->e:Lnet/sf/saxon/s9api/Location;

    .line 3
    iput p2, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->f:I

    .line 4
    iput p3, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->g:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->e:Lnet/sf/saxon/s9api/Location;

    .line 7
    iput p2, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->f:I

    .line 8
    iput p3, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->g:I

    .line 9
    iput-object p4, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->g:I

    return p0
.end method

.method public getContainingLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->e:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->e:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->f:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getLocalLineNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->f:I

    return p0
.end method

.method public getNearbyText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->e:Lnet/sf/saxon/s9api/Location;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;->e:Lnet/sf/saxon/s9api/Location;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method
