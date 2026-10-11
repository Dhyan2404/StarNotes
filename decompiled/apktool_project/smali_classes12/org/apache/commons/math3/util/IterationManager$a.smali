.class public Lorg/apache/commons/math3/util/IterationManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/util/IterationManager;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager$a;->a:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trigger(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager$a;->a:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;->trigger(I)V

    return-void
.end method
