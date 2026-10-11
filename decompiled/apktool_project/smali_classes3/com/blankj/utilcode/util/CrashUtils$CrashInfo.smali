.class public final Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/CrashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CrashInfo"
.end annotation


# instance fields
.field public a:Lcom/blankj/utilcode/util/b$a;

.field public b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->b:Ljava/lang/Throwable;

    .line 4
    new-instance p2, Lcom/blankj/utilcode/util/b$a;

    const-string v0, "Crash"

    invoke-direct {p2, v0}, Lcom/blankj/utilcode/util/b$a;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->a:Lcom/blankj/utilcode/util/b$a;

    const-string p0, "Time Of Crash"

    .line 5
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/blankj/utilcode/util/CrashUtils$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final addExtraHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->a:Lcom/blankj/utilcode/util/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addExtraHead(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->a:Lcom/blankj/utilcode/util/b$a;

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/b$a;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->b:Ljava/lang/Throwable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->a:Lcom/blankj/utilcode/util/b$a;

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->b:Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/blankj/utilcode/util/b;->T(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
