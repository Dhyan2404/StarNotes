.class public final synthetic Lcom/sunia/HTREnginev2/r7n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->f(Lorg/bouncycastle/asn1/x509/GeneralName;)Z

    move-result p0

    return p0
.end method
