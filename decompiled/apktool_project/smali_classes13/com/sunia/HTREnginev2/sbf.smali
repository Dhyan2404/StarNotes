.class public final synthetic Lcom/sunia/HTREnginev2/sbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/SOAPFault;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sbf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sbf;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/sbf;->g:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sbf;->e:Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sbf;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sbf;->g:Ljava/util/Locale;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->U0(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
