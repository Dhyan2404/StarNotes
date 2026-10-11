.class Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$DOMSerializerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/serialize/DOMSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DOMSerializerWrapper"
.end annotation


# instance fields
.field private final m_dom:Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$DOMSerializerWrapper;->m_dom:Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;

    return-void
.end method


# virtual methods
.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$DOMSerializerWrapper;->m_dom:Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;->serialize(Lorg/w3c/dom/Node;)V

    return-void
.end method
