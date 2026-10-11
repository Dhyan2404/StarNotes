.class public final synthetic Lcom/sunia/HTREnginev2/odf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/odf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/odf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->c(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method
