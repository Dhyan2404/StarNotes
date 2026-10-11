.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;
    }
.end annotation


# direct methods
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

    return-object p1
.end method

.method public getAllowedFacets()S
    .locals 0

    const/16 p0, 0x81f

    return p0
.end method

.method public getDataLength(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result p0

    return p0
.end method
