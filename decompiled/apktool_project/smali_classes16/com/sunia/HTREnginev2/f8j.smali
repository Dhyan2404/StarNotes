.class public final synthetic Lcom/sunia/HTREnginev2/f8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/w3/x2000/x09/xmldsig/impl/ManifestTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/w3/x2000/x09/xmldsig/impl/ManifestTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f8j;->e:Lorg/w3/x2000/x09/xmldsig/impl/ManifestTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f8j;->e:Lorg/w3/x2000/x09/xmldsig/impl/ManifestTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/w3/x2000/x09/xmldsig/impl/ManifestTypeImpl;->getReferenceArray(I)Lorg/w3/x2000/x09/xmldsig/ReferenceType;

    move-result-object p0

    return-object p0
.end method
