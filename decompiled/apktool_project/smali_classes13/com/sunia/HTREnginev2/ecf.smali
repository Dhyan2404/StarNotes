.class public final synthetic Lcom/sunia/HTREnginev2/ecf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ecf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ecf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->u0(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
