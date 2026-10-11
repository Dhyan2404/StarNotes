.class public final synthetic Lorg/apache/xmlbeans/impl/store/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field public final synthetic b:Lorg/apache/xmlbeans/impl/soap/SOAPFault;

.field public final synthetic c:Lorg/apache/xmlbeans/impl/soap/Name;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/i;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/i;->b:Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/i;->c:Lorg/apache/xmlbeans/impl/soap/Name;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/i;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/i;->b:Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/i;->c:Lorg/apache/xmlbeans/impl/soap/Name;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->p0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
