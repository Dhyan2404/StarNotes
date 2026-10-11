.class public Lcom/tencent/qimei/uin/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/uin/U;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static native a(I[B[B[B)[B
.end method

.method public static native c(I)[Ljava/lang/String;
.end method

.method public static native d(Ljava/lang/String;)[B
.end method

.method public static native e(Ljava/lang/String;Ljava/lang/String;)B
.end method

.method public static native n(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public static native o()Ljava/lang/String;
.end method

.method public static native p()Ljava/lang/String;
.end method

.method public static native r()Ljava/lang/String;
.end method

.method public static native s()Ljava/lang/String;
.end method

.method public static native u()Ljava/lang/String;
.end method

.method public static native x(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native z(Landroid/content/Context;)Ljava/lang/String;
.end method
