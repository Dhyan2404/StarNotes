.class public final synthetic Lcom/sunia/HTREnginev2/kdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kdf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kdf;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kdf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kdf;->f:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->W0(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
