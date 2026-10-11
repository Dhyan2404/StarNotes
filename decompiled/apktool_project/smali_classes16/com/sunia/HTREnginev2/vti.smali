.class public final synthetic Lcom/sunia/HTREnginev2/vti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/w3/x2000/x09/xmldsig/impl/KeyInfoTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/w3/x2000/x09/xmldsig/impl/KeyInfoTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vti;->e:Lorg/w3/x2000/x09/xmldsig/impl/KeyInfoTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vti;->e:Lorg/w3/x2000/x09/xmldsig/impl/KeyInfoTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/w3/x2000/x09/xmldsig/impl/KeyInfoTypeImpl;->getX509DataArray(I)Lorg/w3/x2000/x09/xmldsig/X509DataType;

    move-result-object p0

    return-object p0
.end method
