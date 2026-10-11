.class public final synthetic Lcom/sunia/HTREnginev2/udf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/udf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/udf;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/udf;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/udf;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/udf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/udf;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/udf;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/udf;->h:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->i(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p0

    return-object p0
.end method
