.class public final synthetic Lcom/sunia/HTREnginev2/xcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Ljavax/xml/namespace/QName;

.field public final synthetic f:Ljavax/xml/namespace/QName;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xcf;->e:Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xcf;->f:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xcf;->e:Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xcf;->f:Ljavax/xml/namespace/QName;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->E0(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method
