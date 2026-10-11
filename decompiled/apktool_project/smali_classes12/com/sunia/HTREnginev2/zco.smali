.class public final synthetic Lcom/sunia/HTREnginev2/zco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;


# direct methods
.method public synthetic constructor <init>(Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zco;->e:Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zco;->e:Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;

    invoke-interface {p0}, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->addNewUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;

    move-result-object p0

    return-object p0
.end method
