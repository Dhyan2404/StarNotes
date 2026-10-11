.class public final synthetic Lcom/sunia/HTREnginev2/bgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    invoke-static {p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->c(Lorg/apache/commons/compress/harmony/unpack200/IcTuple;Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)I

    move-result p0

    return p0
.end method
