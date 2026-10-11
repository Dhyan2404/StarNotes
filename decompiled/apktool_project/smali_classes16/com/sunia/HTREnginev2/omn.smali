.class public final synthetic Lcom/sunia/HTREnginev2/omn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/w3/x2000/x09/xmldsig/impl/TransformsTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/w3/x2000/x09/xmldsig/impl/TransformsTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/omn;->e:Lorg/w3/x2000/x09/xmldsig/impl/TransformsTypeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/omn;->e:Lorg/w3/x2000/x09/xmldsig/impl/TransformsTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/w3/x2000/x09/xmldsig/impl/TransformsTypeImpl;->removeTransform(I)V

    return-void
.end method
