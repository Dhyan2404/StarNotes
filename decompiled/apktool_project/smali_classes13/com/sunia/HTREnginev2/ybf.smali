.class public final synthetic Lcom/sunia/HTREnginev2/ybf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ybf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ybf;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ybf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ybf;->f:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->b1(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
