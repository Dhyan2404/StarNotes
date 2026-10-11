.class public Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/MapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lorg/apache/commons/math3/ml/neuralnet/Neuron;

.field public final b:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a$a;

    invoke-direct {v0}, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a$a;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/Neuron;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;->a:Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    iput-wide p2, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;->b:D

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;->b:D

    return-wide v0
.end method


# virtual methods
.method public b()Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/MapUtils$a;->a:Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    return-object p0
.end method
