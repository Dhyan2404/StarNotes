.class public abstract Lcom/sunia/HTREnginev2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/s;->a:Ljava/util/Map;

    new-instance v1, Lcom/sunia/HTREnginev2/g6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/i6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/m;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/u6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/c;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/x6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/d;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/y6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/n;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/z6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/a7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/o;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/b7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/y;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/d7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/h0;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/e7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/l0;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/r6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/c7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/f7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/i;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/g7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/h7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/k;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/i7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/j7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/k7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/l7p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l7p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/h6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/j6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/k6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/l6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/m6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/s;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/n6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/o6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/p6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/h1;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/q6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/m1;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/s6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/HTREnginev2/n1;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/t6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/w;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/v6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class v2, Lcom/sunia/calculatorv2/ink/model/y;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/w6p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w6p;-><init>(Lcom/sunia/HTREnginev2/s;)V

    const-class p0, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic A(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->S(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->l0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->Y(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->o0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->i0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->K(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic I(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/n;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic K(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic L(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/o;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/o;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic M(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/y;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/y;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic N(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/h0;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/h0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic O(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/l0;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/l0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic P(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/a;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Q(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/m;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic R(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic S(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic T(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/i;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic U(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/j;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic V(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/k;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic W(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic X(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Y(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Z(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/o;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->n0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->d0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/c;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->b0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->W(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/r;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->X(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/t;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->O(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/s;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/s;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->V(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/u;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->a0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/v;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->Z(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic i0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/h1;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/h1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->h0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/m1;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/m1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->L(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic k0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/n1;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/HTREnginev2/n1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->j0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/w;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->k0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/d;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->U(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/y;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/y;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->I(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic o0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->a(Lcom/sunia/calculatorv2/ink/model/x;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->e0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->g0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->R(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->T(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->P(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->M(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->N(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->f0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->m0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->Q(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/sunia/HTREnginev2/s;Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s;->c0(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/h0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/h0;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/h1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/h1;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/l0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/l0;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/m1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/m1;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/m;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/m;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/n1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/n1;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/n;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/n;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/HTREnginev2/o;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/o;",
            ")TV;"
        }
    .end annotation
.end method

.method public a(Lcom/sunia/HTREnginev2/y;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/y;",
            ")TV;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ")TV;"
        }
    .end annotation
.end method

.method public a(Lcom/sunia/calculatorv2/ink/model/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/a;",
            ")TV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/sunia/calculatorv2/ink/model/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/c;",
            ")TV;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/sunia/calculatorv2/ink/model/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/d;",
            ")TV;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/e;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/h;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/h;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/i;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/i;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/j;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/j;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/k;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/k;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/l;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/l;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/m;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/m;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/n;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/n;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/o;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/o;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/p;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/p;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/q;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/q;",
            ")TV;"
        }
    .end annotation
.end method

.method public a(Lcom/sunia/calculatorv2/ink/model/r;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/r;",
            ")TV;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/s;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/s;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/t;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/t;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/u;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/u;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/v;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/v;",
            ")TV;"
        }
    .end annotation
.end method

.method public a(Lcom/sunia/calculatorv2/ink/model/w;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/w;",
            ")TV;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/s;->H(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/x;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/x;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sunia/calculatorv2/ink/model/y;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/y;",
            ")TV;"
        }
    .end annotation
.end method
