.class public final synthetic Lcom/sunia/HTREnginev2/gef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPElement;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gef;->e:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gef;->e:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->E(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
