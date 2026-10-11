.class public abstract Lcom/sunia/HTREnginev2/jxf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/jxf$a;
    }
.end annotation


# static fields
.field public static final a:J = 0xa00000L

.field public static final b:I = 0xc8

.field public static final c:I = 0x2710

.field public static final d:J = 0x240c8400L

.field public static final e:I = 0x14000

.field public static final f:Lcom/sunia/HTREnginev2/jxf;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sunia/HTREnginev2/jxf;->a()Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jxf$a;->f(J)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/jxf$a;->d(I)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/jxf$a;->b(I)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jxf$a;->c(J)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    const v1, 0x14000

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/jxf$a;->e(I)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/jxf$a;->a()Lcom/sunia/HTREnginev2/jxf;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/jxf;->f:Lcom/sunia/HTREnginev2/jxf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sunia/HTREnginev2/jxf$a;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sj$b;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sj$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()J
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()J
.end method

.method public g()Lcom/sunia/HTREnginev2/jxf$a;
    .locals 3

    invoke-static {}, Lcom/sunia/HTREnginev2/jxf;->a()Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jxf;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jxf$a;->f(J)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jxf;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/jxf$a;->d(I)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jxf;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/jxf$a;->b(I)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jxf;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/jxf$a;->c(J)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jxf;->e()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/jxf$a;->e(I)Lcom/sunia/HTREnginev2/jxf$a;

    move-result-object p0

    return-object p0
.end method
