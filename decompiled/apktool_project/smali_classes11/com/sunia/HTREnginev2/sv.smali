.class public final Lcom/sunia/HTREnginev2/sv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/sv$d;,
        Lcom/sunia/HTREnginev2/sv$c;,
        Lcom/sunia/HTREnginev2/sv$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/sv$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/sv;->b()Lcom/sunia/HTREnginev2/sv$b;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/sv;->a:Lcom/sunia/HTREnginev2/sv$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/sunia/HTREnginev2/sv;->a:Lcom/sunia/HTREnginev2/sv$b;

    invoke-interface {v0, p0}, Lcom/sunia/HTREnginev2/sv$b;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to clean direct buffer."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b()Lcom/sunia/HTREnginev2/sv$b;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sunia/HTREnginev2/sv$c;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/sv$c;-><init>(Lcom/sunia/HTREnginev2/sv$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lcom/sunia/HTREnginev2/sv$d;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/sv$d;-><init>(Lcom/sunia/HTREnginev2/sv$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to initialize a Cleaner."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/sv;->a:Lcom/sunia/HTREnginev2/sv$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
