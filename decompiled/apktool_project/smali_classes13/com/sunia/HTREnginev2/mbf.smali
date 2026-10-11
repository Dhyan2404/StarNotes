.class public final synthetic Lcom/sunia/HTREnginev2/mbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mbf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mbf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPPart;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->C0(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
