.class public final synthetic Lcom/sunia/HTREnginev2/tef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/Node;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tef;->e:Lorg/apache/xmlbeans/impl/soap/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tef;->e:Lorg/apache/xmlbeans/impl/soap/Node;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->H0(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
