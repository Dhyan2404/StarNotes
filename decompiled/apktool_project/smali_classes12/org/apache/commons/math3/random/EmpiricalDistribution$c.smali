.class public abstract Lorg/apache/commons/math3/random/EmpiricalDistribution$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$c;->a:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$c;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
