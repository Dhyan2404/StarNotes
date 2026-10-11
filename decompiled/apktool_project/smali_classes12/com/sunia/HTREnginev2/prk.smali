.class public final synthetic Lcom/sunia/HTREnginev2/prk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zaxxer/sparsebits/SparseBitSet;

    check-cast p2, Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-static {p1, p2}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->a(Lcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet;)V

    return-void
.end method
