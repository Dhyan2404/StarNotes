.class public final synthetic Lcom/sunia/HTREnginev2/t6k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljavax/xml/crypto/dsig/Reference;

    invoke-interface {p1}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
