.class Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needExtraChecking()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needFacetChecking()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needToNormalize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public useNamespaces()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
