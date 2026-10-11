.class Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AnyAtomicDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;
.source "SourceFile"


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

    const/4 p0, 0x0

    return p0
.end method
