.class public final synthetic Lorg/apache/xmlbeans/impl/store/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field public final synthetic b:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/s;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/s;->b:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/s;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/xmlbeans/impl/store/s;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/s;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/s;->b:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/s;->c:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/s;->d:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/s;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->S0(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object p0

    return-object p0
.end method
