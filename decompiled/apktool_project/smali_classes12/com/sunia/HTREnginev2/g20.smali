.class public final synthetic Lcom/sunia/HTREnginev2/g20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g20;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g20;->e:Ljava/util/Map;

    check-cast p1, Lorg/apache/poi/hwpf/model/CHPX;

    check-cast p2, Lorg/apache/poi/hwpf/model/CHPX;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hwpf/model/CHPBinTable;->a(Ljava/util/Map;Lorg/apache/poi/hwpf/model/CHPX;Lorg/apache/poi/hwpf/model/CHPX;)I

    move-result p0

    return p0
.end method
