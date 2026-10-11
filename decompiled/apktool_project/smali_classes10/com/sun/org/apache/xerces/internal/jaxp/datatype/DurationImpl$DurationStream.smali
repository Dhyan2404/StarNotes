.class Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl$DurationStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationStream"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final lexical:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl$DurationStream;->lexical:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl$DurationStream;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl$DurationStream;->lexical:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/datatype/DurationImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
