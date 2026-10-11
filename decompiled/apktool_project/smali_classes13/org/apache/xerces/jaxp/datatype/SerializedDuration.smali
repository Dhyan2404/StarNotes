.class final Lorg/apache/xerces/jaxp/datatype/SerializedDuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x36159cec8c6d6141L


# instance fields
.field private final lexicalValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;->lexicalValue:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;-><init>()V

    iget-object p0, p0, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;->lexicalValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method
