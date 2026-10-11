.class public Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final INVALID_ENTRY:I = 0x2

.field public static final INVALID_ENTRY_TYPE:I = 0x3

.field public static final NO_XML_PARSER:I = 0x4

.field public static final PARSE_FAILED:I = 0x7

.field public static final UNENDED_COMMENT:I = 0x8

.field public static final UNKNOWN_FORMAT:I = 0x5

.field public static final UNPARSEABLE:I = 0x6

.field public static final WRAPPER:I = 0x1


# instance fields
.field private exception:Ljava/lang/Exception;

.field private exceptionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catalog Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exceptionType:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exceptionType:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exceptionType:I

    .line 9
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exceptionType:I

    .line 12
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getExceptionType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exceptionType:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exception:Ljava/lang/Exception;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
