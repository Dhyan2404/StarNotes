.class public final synthetic Lcom/sunia/HTREnginev2/nef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nef;->e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/nef;->f:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nef;->e:Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/nef;->f:Z

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->e(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;ZLorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
