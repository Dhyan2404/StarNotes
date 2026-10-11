.class public final synthetic Lcom/sunia/HTREnginev2/ddf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/w3c/dom/Element;

.field public final synthetic f:Z

.field public final synthetic g:Ljavax/xml/namespace/QName;


# direct methods
.method public synthetic constructor <init>(Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ddf;->e:Lorg/w3c/dom/Element;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/ddf;->f:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ddf;->g:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ddf;->e:Lorg/w3c/dom/Element;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/ddf;->f:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ddf;->g:Ljavax/xml/namespace/QName;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->a(Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method
