.class public Lcom/sunia/HTREnginev2/qb$a;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/qb;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZLxcrash/ICrashCallback;Lxcrash/ICrashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/qb;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/qb;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qb$a;->a:Lcom/sunia/HTREnginev2/qb;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/anr/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qb$a;->a:Lcom/sunia/HTREnginev2/qb;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/qb;->a(Lcom/sunia/HTREnginev2/qb;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lxcrash/XCrash;->c()Lxcrash/ILogger;

    move-result-object p1

    const-string p2, "xcrash"

    const-string v0, "AnrHandler fileObserver onEvent failed"

    invoke-interface {p1, p2, v0, p0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
