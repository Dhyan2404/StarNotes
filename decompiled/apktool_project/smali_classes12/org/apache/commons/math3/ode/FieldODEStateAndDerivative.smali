.class public Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
.super Lorg/apache/commons/math3/ode/FieldODEState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/FieldODEState<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final e:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v5

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;[[TT;[[TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/commons/math3/ode/FieldODEState;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 3
    invoke-virtual {p3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->d:[Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lorg/apache/commons/math3/ode/FieldODEState;->copy(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/RealFieldElement;)[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->e:[[Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method public getDerivative()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->d:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getSecondaryDerivative(I)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->d:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->e:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, [Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method
