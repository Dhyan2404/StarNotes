.class public final synthetic Lcom/sunia/HTREnginev2/fni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/etsi/uri/x01903/v13/impl/IntegerListTypeImpl;->r(I)[Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
