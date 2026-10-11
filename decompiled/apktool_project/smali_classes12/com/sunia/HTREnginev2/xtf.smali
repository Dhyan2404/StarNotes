.class public final synthetic Lcom/sunia/HTREnginev2/xtf;
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

    check-cast p1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    check-cast p2, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-static {p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord;->c(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result p0

    return p0
.end method
