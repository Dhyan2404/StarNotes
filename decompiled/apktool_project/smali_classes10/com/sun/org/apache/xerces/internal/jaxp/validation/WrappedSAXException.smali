.class public Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final exception:Lorg/xml/sax/SAXException;


# direct methods
.method public constructor <init>(Lorg/xml/sax/SAXException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    return-void
.end method
