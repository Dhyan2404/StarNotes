.class public Lorg/apache/xerces/impl/dv/xs/ListDV;
.super Lorg/apache/xerces/impl/dv/xs/TypeValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/dv/xs/ListDV$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    return-object p1
.end method

.method public getAllowedFacets()S
    .locals 0

    const/16 p0, 0x81f

    return p0
.end method

.method public getDataLength(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/ListDV$a;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/xs/ListDV$a;->getLength()I

    move-result p0

    return p0
.end method
