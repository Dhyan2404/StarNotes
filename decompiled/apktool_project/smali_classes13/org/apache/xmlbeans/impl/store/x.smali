.class public final synthetic Lorg/apache/xmlbeans/impl/store/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$WrapSoapEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field public final synthetic b:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

.field public final synthetic c:Lorg/apache/xmlbeans/impl/soap/Name;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/x;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/x;->b:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/x;->c:Lorg/apache/xmlbeans/impl/soap/Name;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/x;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/xmlbeans/impl/store/x;->e:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/x;->a:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/x;->b:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/x;->c:Lorg/apache/xmlbeans/impl/soap/Name;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/x;->d:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/x;->e:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->e1(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    move-result-object p0

    return-object p0
.end method
