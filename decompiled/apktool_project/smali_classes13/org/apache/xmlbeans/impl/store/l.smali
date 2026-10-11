.class public final synthetic Lorg/apache/xmlbeans/impl/store/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field public final synthetic b:Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/l;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/l;->b:Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/l;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/l;->b:Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->d(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object p0

    return-object p0
.end method
