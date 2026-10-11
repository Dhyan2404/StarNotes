.class public final synthetic Lcom/sunia/HTREnginev2/arm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/w3/x2000/x09/xmldsig/impl/SignatureTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/w3/x2000/x09/xmldsig/impl/SignatureTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/arm;->e:Lorg/w3/x2000/x09/xmldsig/impl/SignatureTypeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/arm;->e:Lorg/w3/x2000/x09/xmldsig/impl/SignatureTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/w3/x2000/x09/xmldsig/ObjectType;

    invoke-virtual {p0, p1, p2}, Lorg/w3/x2000/x09/xmldsig/impl/SignatureTypeImpl;->setObjectArray(ILorg/w3/x2000/x09/xmldsig/ObjectType;)V

    return-void
.end method
