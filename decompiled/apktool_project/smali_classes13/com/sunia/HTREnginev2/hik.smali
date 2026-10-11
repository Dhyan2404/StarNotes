.class public final synthetic Lcom/sunia/HTREnginev2/hik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/etsi/uri/x01903/v13/impl/OtherCertStatusValuesTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/etsi/uri/x01903/v13/impl/OtherCertStatusValuesTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hik;->e:Lorg/etsi/uri/x01903/v13/impl/OtherCertStatusValuesTypeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hik;->e:Lorg/etsi/uri/x01903/v13/impl/OtherCertStatusValuesTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/etsi/uri/x01903/v13/impl/OtherCertStatusValuesTypeImpl;->removeOtherValue(I)V

    return-void
.end method
