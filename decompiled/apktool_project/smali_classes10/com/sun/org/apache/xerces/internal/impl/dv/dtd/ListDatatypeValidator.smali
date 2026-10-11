.class public Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/ListDatatypeValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;


# instance fields
.field fItemValidator:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/ListDatatypeValidator;->fItemValidator:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/dtd/ListDatatypeValidator;->fItemValidator:Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    const-string p1, "EmptyList"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
