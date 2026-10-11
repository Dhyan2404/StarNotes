.class public final Lcom/google/common/collect/MoreCollectors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/sunia/HTREnginev2/snf;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MoreCollectors$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/sunia/HTREnginev2/toj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/toj;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/uoj;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/uoj;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/voj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/voj;-><init>()V

    new-instance v3, Lcom/sunia/HTREnginev2/woj;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/woj;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    sget-object v6, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MoreCollectors;->a:Ljava/util/stream/Collector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/MoreCollectors;->b:Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/toj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/toj;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/xoj;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xoj;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/voj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/voj;-><init>()V

    new-instance v3, Lcom/sunia/HTREnginev2/yoj;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/yoj;-><init>()V

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MoreCollectors;->c:Ljava/util/stream/Collector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/collect/MoreCollectors$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/MoreCollectors;->c(Lcom/google/common/collect/MoreCollectors$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/MoreCollectors$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/MoreCollectors;->d(Lcom/google/common/collect/MoreCollectors$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/common/collect/MoreCollectors$a;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/common/collect/MoreCollectors;->b:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MoreCollectors$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/common/collect/MoreCollectors$a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/MoreCollectors$a;->c()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/MoreCollectors;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static onlyElement()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MoreCollectors;->c:Ljava/util/stream/Collector;

    return-object v0
.end method

.method public static toOptional()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MoreCollectors;->a:Ljava/util/stream/Collector;

    return-object v0
.end method
