.class public Lorg/apache/xerces/impl/dv/xs/DoubleDV;
.super Lorg/apache/xerces/impl/dv/xs/TypeValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x45

    if-eq v3, v4, :cond_2

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;

    check-cast p2, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;

    invoke-static {p1, p2}, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;->a(Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;)I

    move-result p0

    return p0
.end method

.method public getActualValue(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string p2, "double"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getAllowedFacets()S
    .locals 0

    const/16 p0, 0x9f8

    return p0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p2, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;

    check-cast p2, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;->c(Lorg/apache/xerces/impl/dv/xs/DoubleDV$a;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
