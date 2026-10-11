.class public Lcom/graphbuilder/math/FuncMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Lcom/graphbuilder/math/func/Function;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    iput-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    new-array v0, v0, [Lcom/graphbuilder/math/func/Function;

    .line 3
    iput-object v0, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    .line 5
    iput-boolean v0, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v1, v0, [Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    new-array v0, v0, [Lcom/graphbuilder/math/func/Function;

    .line 8
    iput-object v0, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    .line 10
    iput-boolean p1, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    return-void
.end method


# virtual methods
.method public getFunction(Ljava/lang/String;I)Lcom/graphbuilder/math/func/Function;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aget-object v1, v1, v0

    invoke-interface {v1, p2}, Lcom/graphbuilder/math/func/Function;->acceptNumParam(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFunctionNames()[Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFunctions()[Lcom/graphbuilder/math/func/Function;
    .locals 4

    iget v0, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    new-array v1, v0, [Lcom/graphbuilder/math/func/Function;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isCaseSensitive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    return p0
.end method

.method public loadDefaultFunctions()V
    .locals 2

    new-instance v0, Lcom/graphbuilder/math/func/MinFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/MinFunction;-><init>()V

    const-string v1, "min"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/MaxFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/MaxFunction;-><init>()V

    const-string v1, "max"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/SumFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/SumFunction;-><init>()V

    const-string v1, "sum"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AvgFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AvgFunction;-><init>()V

    const-string v1, "avg"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/PiFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/PiFunction;-><init>()V

    const-string v1, "pi"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/EFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/EFunction;-><init>()V

    const-string v1, "e"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/RandFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/RandFunction;-><init>()V

    const-string v1, "rand"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/SinFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/SinFunction;-><init>()V

    const-string v1, "sin"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/CosFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/CosFunction;-><init>()V

    const-string v1, "cos"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/TanFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/TanFunction;-><init>()V

    const-string v1, "tan"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/SqrtFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/SqrtFunction;-><init>()V

    const-string v1, "sqrt"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AbsFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AbsFunction;-><init>()V

    const-string v1, "abs"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/CeilFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/CeilFunction;-><init>()V

    const-string v1, "ceil"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/FloorFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/FloorFunction;-><init>()V

    const-string v1, "floor"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/ExpFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/ExpFunction;-><init>()V

    const-string v1, "exp"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/LgFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/LgFunction;-><init>()V

    const-string v1, "lg"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/LnFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/LnFunction;-><init>()V

    const-string v1, "ln"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/SignFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/SignFunction;-><init>()V

    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/RoundFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/RoundFunction;-><init>()V

    const-string v1, "round"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/FactFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/FactFunction;-><init>()V

    const-string v1, "fact"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/CoshFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/CoshFunction;-><init>()V

    const-string v1, "cosh"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/SinhFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/SinhFunction;-><init>()V

    const-string v1, "sinh"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/TanhFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/TanhFunction;-><init>()V

    const-string v1, "tanh"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AcosFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AcosFunction;-><init>()V

    const-string v1, "acos"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AsinFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AsinFunction;-><init>()V

    const-string v1, "asin"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AtanFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AtanFunction;-><init>()V

    const-string v1, "atan"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AcoshFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AcoshFunction;-><init>()V

    const-string v1, "acosh"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AsinhFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AsinhFunction;-><init>()V

    const-string v1, "asinh"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/AtanhFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/AtanhFunction;-><init>()V

    const-string v1, "atanh"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/PowFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/PowFunction;-><init>()V

    const-string v1, "pow"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/ModFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/ModFunction;-><init>()V

    const-string v1, "mod"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/CombinFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/CombinFunction;-><init>()V

    const-string v1, "combin"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    new-instance v0, Lcom/graphbuilder/math/func/LogFunction;

    invoke-direct {v0}, Lcom/graphbuilder/math/func/LogFunction;-><init>()V

    const-string v1, "log"

    invoke-virtual {p0, v1, v0}, Lcom/graphbuilder/math/FuncMap;->setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    add-int/lit8 v1, v0, -0x1

    aget-object v2, p1, v0

    aput-object v2, p1, v1

    iget-object p1, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aget-object v2, p1, v0

    aput-object v2, p1, v1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    iget-object v0, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object p0, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aput-object v1, p0, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setFunction(Ljava/lang/String;Lcom/graphbuilder/math/func/Function;)V
    .locals 4

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    if-ge v1, v2, :cond_3

    iget-boolean v2, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/graphbuilder/math/FuncMap;->d:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aput-object p2, p0, v1

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ne v2, v1, :cond_5

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    new-array v2, v2, [Lcom/graphbuilder/math/func/Function;

    :goto_1
    iget v3, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    iget-object v3, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    iput-object v2, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    :cond_5
    iget-object v0, p0, Lcom/graphbuilder/math/FuncMap;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/graphbuilder/math/FuncMap;->b:[Lcom/graphbuilder/math/func/Function;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphbuilder/math/FuncMap;->c:I

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "function cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "function name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
