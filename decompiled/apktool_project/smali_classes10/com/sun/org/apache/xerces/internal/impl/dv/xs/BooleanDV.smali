.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BooleanDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;
.source "SourceFile"


# static fields
.field private static final fValueSpace:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "false"

    const-string v3, "true"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BooleanDV;->fValueSpace:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BooleanDV;->fValueSpace:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p2, p0, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    aget-object p2, p0, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    aget-object p2, p0, p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x3

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    const-string p2, "boolean"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p0
.end method

.method public getAllowedFacets()S
    .locals 0

    const/16 p0, 0x18

    return p0
.end method
