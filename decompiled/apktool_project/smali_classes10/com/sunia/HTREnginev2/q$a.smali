.class public Lcom/sunia/HTREnginev2/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/HWRCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/q;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/g;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Lcom/sunia/HTREnginev2/q;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/q;Lcom/sunia/HTREnginev2/g;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->a:Lcom/sunia/HTREnginev2/g;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/q$a;->b:Ljava/util/List;

    iput p4, p0, Lcom/sunia/HTREnginev2/q$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/q$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/q$a;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/q;->y0(Lcom/sunia/HTREnginev2/q;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/q;->F0(Lcom/sunia/HTREnginev2/q;)Lcom/sunia/HTREnginev2/p1;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->convert()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/q;->p0(Lcom/sunia/HTREnginev2/q;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->a:Lcom/sunia/HTREnginev2/g;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/g;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Editor"

    invoke-static {v0, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/o1;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q$a;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->createPlaceholder(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->b:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->parseResult(Ljava/lang/String;Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q$a;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->createPlaceholder(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/q;->m0(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;)Lcom/sunia/calculatorv2/ink/model/e;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    iget v1, p0, Lcom/sunia/HTREnginev2/q$a;->c:I

    invoke-static {p2, p1, v1}, Lcom/sunia/HTREnginev2/q;->o0(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;I)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/q;->w0(Lcom/sunia/HTREnginev2/q;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/sunia/HTREnginev2/q$a;->c:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/q;->y0(Lcom/sunia/HTREnginev2/q;)I

    move-result v1

    if-ne p2, v1, :cond_3

    :try_start_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/q;->D0(Lcom/sunia/HTREnginev2/q;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iget v1, p0, Lcom/sunia/HTREnginev2/q$a;->c:I

    new-instance v2, Lcom/sunia/HTREnginev2/y4p;

    invoke-direct {v2, p0, v1}, Lcom/sunia/HTREnginev2/y4p;-><init>(Lcom/sunia/HTREnginev2/q$a;I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q$a;->d:Lcom/sunia/HTREnginev2/q;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/q;->B0(Lcom/sunia/HTREnginev2/q;)J

    move-result-wide v3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2, v3, v4, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Recognized finished:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/c0;->a(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
