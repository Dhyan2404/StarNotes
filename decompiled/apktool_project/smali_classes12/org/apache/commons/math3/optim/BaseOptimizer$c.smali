.class public Lorg/apache/commons/math3/optim/BaseOptimizer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/BaseOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/optim/BaseOptimizer$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer$c;-><init>()V

    return-void
.end method


# virtual methods
.method public trigger(I)V
    .locals 0

    new-instance p0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method
