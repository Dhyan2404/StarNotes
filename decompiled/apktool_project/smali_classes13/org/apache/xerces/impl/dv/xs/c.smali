.class public Lorg/apache/xerces/impl/dv/xs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/dv/ValidationContext;


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

.method public getLocale()Ljava/util/Locale;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
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

    const/4 p0, 0x1

    return p0
.end method

.method public useNamespaces()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
