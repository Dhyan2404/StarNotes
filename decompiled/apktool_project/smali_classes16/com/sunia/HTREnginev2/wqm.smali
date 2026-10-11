.class public final synthetic Lcom/sunia/HTREnginev2/wqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/w3/x2000/x09/xmldsig/impl/SignaturePropertiesTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/w3/x2000/x09/xmldsig/impl/SignaturePropertiesTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wqm;->e:Lorg/w3/x2000/x09/xmldsig/impl/SignaturePropertiesTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqm;->e:Lorg/w3/x2000/x09/xmldsig/impl/SignaturePropertiesTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/w3/x2000/x09/xmldsig/impl/SignaturePropertiesTypeImpl;->insertNewSignatureProperty(I)Lorg/w3/x2000/x09/xmldsig/SignaturePropertyType;

    move-result-object p0

    return-object p0
.end method
