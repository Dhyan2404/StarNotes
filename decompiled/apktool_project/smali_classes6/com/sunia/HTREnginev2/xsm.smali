.class public final synthetic Lcom/sunia/HTREnginev2/xsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Ljava/lang/reflect/Method;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xsm;->e:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xsm;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xsm;->g:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xsm;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xsm;->f:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xsm;->g:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
