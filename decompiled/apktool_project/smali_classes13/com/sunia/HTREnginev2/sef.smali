.class public final synthetic Lcom/sunia/HTREnginev2/sef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

.field public final synthetic f:Lorg/w3c/dom/Document;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sef;->e:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sef;->f:Lorg/w3c/dom/Document;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sef;->e:Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sef;->f:Lorg/w3c/dom/Document;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->n0(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    move-result-object p0

    return-object p0
.end method
