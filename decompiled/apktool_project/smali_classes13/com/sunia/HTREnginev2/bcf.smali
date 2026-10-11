.class public final synthetic Lcom/sunia/HTREnginev2/bcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;

.field public final synthetic f:Ljavax/xml/transform/Source;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bcf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bcf;->f:Ljavax/xml/transform/Source;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bcf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bcf;->f:Ljavax/xml/transform/Source;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->M0(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
