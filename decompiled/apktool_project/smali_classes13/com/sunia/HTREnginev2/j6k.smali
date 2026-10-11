.class public final synthetic Lcom/sunia/HTREnginev2/j6k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/etsi/uri/x01903/v13/impl/OCSPValuesTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/etsi/uri/x01903/v13/impl/OCSPValuesTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j6k;->e:Lorg/etsi/uri/x01903/v13/impl/OCSPValuesTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6k;->e:Lorg/etsi/uri/x01903/v13/impl/OCSPValuesTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/etsi/uri/x01903/v13/impl/OCSPValuesTypeImpl;->getEncapsulatedOCSPValueArray(I)Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;

    move-result-object p0

    return-object p0
.end method
