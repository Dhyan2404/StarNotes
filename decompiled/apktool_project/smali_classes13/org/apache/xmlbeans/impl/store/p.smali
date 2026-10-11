.class public final synthetic Lorg/apache/xmlbeans/impl/store/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field public final synthetic b:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

.field public final synthetic c:Lorg/apache/xmlbeans/impl/soap/Name;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/p;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/p;->b:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/p;->c:Lorg/apache/xmlbeans/impl/soap/Name;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/p;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/p;->b:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/p;->c:Lorg/apache/xmlbeans/impl/soap/Name;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/p;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->g(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method
