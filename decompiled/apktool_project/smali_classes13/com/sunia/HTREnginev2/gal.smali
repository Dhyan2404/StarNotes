.class public final synthetic Lcom/sunia/HTREnginev2/gal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/QNameSetSpecification;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gal;->e:Lorg/apache/xmlbeans/QNameSetSpecification;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gal;->e:Lorg/apache/xmlbeans/QNameSetSpecification;

    check-cast p1, Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->contains(Ljavax/xml/namespace/QName;)Z

    move-result p0

    return p0
.end method
