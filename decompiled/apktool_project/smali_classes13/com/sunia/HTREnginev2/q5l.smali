.class public Lcom/sunia/HTREnginev2/q5l;
.super Lorg/apache/xerces/impl/dv/xs/TypeValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/q5l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/q5l$a;

    check-cast p2, Lcom/sunia/HTREnginev2/q5l$a;

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/q5l$a;->d(Lcom/sunia/HTREnginev2/q5l$a;)I

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
    new-instance p0, Lcom/sunia/HTREnginev2/q5l$a;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/q5l$a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string p2, "precisionDecimal"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getAllowedFacets()S
    .locals 0

    const/16 p0, 0xff8

    return p0
.end method

.method public getFractionDigits(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/q5l$a;

    iget p0, p1, Lcom/sunia/HTREnginev2/q5l$a;->d:I

    return p0
.end method

.method public getTotalDigits(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/q5l$a;

    iget p0, p1, Lcom/sunia/HTREnginev2/q5l$a;->b:I

    return p0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p2, Lcom/sunia/HTREnginev2/q5l$a;

    if-eqz p0, :cond_1

    instance-of p0, p1, Lcom/sunia/HTREnginev2/q5l$a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sunia/HTREnginev2/q5l$a;

    check-cast p2, Lcom/sunia/HTREnginev2/q5l$a;

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/q5l$a;->g(Lcom/sunia/HTREnginev2/q5l$a;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
