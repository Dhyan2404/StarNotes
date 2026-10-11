.class public Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

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

.field public final f:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field public final synthetic g:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->g:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->a:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p2

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->d:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, p3, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->e:[[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p1

    invoke-static {p1, p3, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->f:[[Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->d:[Lorg/apache/commons/math3/RealFieldElement;

    iget v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->e:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->a:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v2, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->f:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->a:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v2, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    aput-object p2, v0, v1

    :cond_0
    iget p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->d:[Lorg/apache/commons/math3/RealFieldElement;

    iget v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->e:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->a:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->f:[[Lorg/apache/commons/math3/RealFieldElement;

    iget v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->a:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    aput-object p1, p2, v0

    iget p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->b:I

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->d:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->g:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->d:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v2, v0

    invoke-interface {p2, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->g:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->f:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p1, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move p1, v1

    :goto_0
    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->g:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object v0, p2, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v2, v0

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->f:[[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, v2, v1

    aget-object v2, v2, p1

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->d:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->e:[[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->f:[[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object p1

    iput-object p1, p2, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->g:Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;

    iget-object p0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    new-instance p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;

    invoke-direct {p0}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;TT;)V"
        }
    .end annotation

    return-void
.end method
