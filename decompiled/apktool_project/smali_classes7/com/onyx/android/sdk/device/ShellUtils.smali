.class public final Lcom/onyx/android/sdk/device/ShellUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShellUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShellUtils.kt\ncom/onyx/android/sdk/device/ShellUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J/\u0010\u0007\u001a\u00020\u00062\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJK\u0010\u0007\u001a\u00020\u00062\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00082\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0007\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0016\u001a\n \u0013*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/ShellUtils;",
        "",
        "",
        "command",
        "",
        "isRooted",
        "Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;",
        "execCmd",
        "",
        "commands",
        "isNeedResultMsg",
        "([Ljava/lang/String;ZZ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;",
        "envp",
        "",
        "timeOut",
        "([Ljava/lang/String;[Ljava/lang/String;ZZJ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;",
        "a",
        "J",
        "PROCESS_WAIT_FOR_TIMEOUT",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljava/lang/String;",
        "LINE_SEP",
        "<init>",
        "()V",
        "CommandResult",
        "sdk-device_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShellUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShellUtils.kt\ncom/onyx/android/sdk/device/ShellUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/device/ShellUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:J = 0x1388L

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/device/ShellUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/device/ShellUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/device/ShellUtils;->INSTANCE:Lcom/onyx/android/sdk/device/ShellUtils;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/device/ShellUtils;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic execCmd$default(Lcom/onyx/android/sdk/device/ShellUtils;[Ljava/lang/String;[Ljava/lang/String;ZZJILjava/lang/Object;)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const-wide/16 p5, 0x1388

    :cond_0
    move-wide v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/device/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZJ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final execCmd(Ljava/lang/String;Z)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/device/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public final execCmd([Ljava/lang/String;ZZ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;
    .locals 9
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 2
    invoke-static/range {v0 .. v8}, Lcom/onyx/android/sdk/device/ShellUtils;->execCmd$default(Lcom/onyx/android/sdk/device/ShellUtils;[Ljava/lang/String;[Ljava/lang/String;ZZJILjava/lang/Object;)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public final execCmd([Ljava/lang/String;[Ljava/lang/String;ZZJ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "UTF-8"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3
    array-length v2, p1

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    const-string v2, ""

    if-eqz v0, :cond_3

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;

    invoke-direct {p0, v1, v2, v2}, Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    if-eqz p3, :cond_4

    const-string p3, "su"

    goto :goto_2

    :cond_4
    const-string p3, "sh"

    :goto_2
    invoke-virtual {v3, p3, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 6
    :try_start_1
    new-instance p3, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p3, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 7
    :try_start_2
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 8
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/OutputStream;->write([B)V

    .line 9
    sget-object v3, Lcom/onyx/android/sdk/device/ShellUtils;->b:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_3

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/device/ShellUtils;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->flush()V

    .line 13
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p5, p6, p1}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz p4, :cond_9

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    :try_start_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    :try_start_4
    new-instance p5, Ljava/io/BufferedReader;

    .line 17
    new-instance p6, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p6, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 18
    invoke-direct {p5, p6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 19
    :try_start_5
    new-instance p6, Ljava/io/BufferedReader;

    .line 20
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21
    invoke-direct {p6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    :try_start_6
    invoke-virtual {p5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :goto_4
    invoke-virtual {p5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 25
    sget-object v0, Lcom/onyx/android/sdk/device/ShellUtils;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual {p6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 27
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :goto_5
    invoke-virtual {p6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 29
    sget-object v0, Lcom/onyx/android/sdk/device/ShellUtils;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :cond_8
    move-object v0, p5

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_a

    :catch_0
    move-exception p0

    goto :goto_d

    :catchall_1
    move-exception p0

    move-object p6, v0

    goto :goto_a

    :catch_1
    move-exception p0

    move-object p6, v0

    goto :goto_d

    :catch_2
    move-exception p0

    move-object p5, v0

    goto :goto_c

    :catch_3
    move-exception p0

    move-object p4, v0

    goto :goto_b

    :cond_9
    move-object p1, v0

    move-object p4, p1

    move-object p6, p4

    .line 30
    :goto_6
    :try_start_7
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    if-eqz v0, :cond_a

    .line 32
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    :catch_5
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_8
    if-eqz p6, :cond_b

    .line 34
    :try_start_9
    invoke-virtual {p6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_9

    :catch_6
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :cond_b
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_14

    :catchall_2
    move-exception p0

    move-object p5, v0

    move-object p6, p5

    :goto_a
    move-object v0, p3

    goto/16 :goto_16

    :catch_7
    move-exception p0

    move-object p1, v0

    move-object p4, p1

    :goto_b
    move-object p5, p4

    :goto_c
    move-object p6, p5

    :goto_d
    move-object v0, p3

    goto :goto_10

    :catchall_3
    move-exception p0

    move-object p5, v0

    goto :goto_e

    :catch_8
    move-exception p0

    move-object p1, v0

    move-object p4, p1

    goto :goto_f

    :catchall_4
    move-exception p0

    move-object p2, v0

    move-object p5, p2

    :goto_e
    move-object p6, p5

    goto :goto_16

    :catch_9
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object p4, p2

    :goto_f
    move-object p5, p4

    move-object p6, p5

    .line 37
    :goto_10
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v0, :cond_c

    .line 38
    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_11

    :catch_a
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_11
    if-eqz p5, :cond_d

    .line 40
    :try_start_c
    invoke-virtual {p5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_12

    :catch_b
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_12
    if-eqz p6, :cond_e

    .line 42
    :try_start_d
    invoke-virtual {p6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_13

    :catch_c
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_13
    if-eqz p2, :cond_f

    goto :goto_9

    .line 44
    :cond_f
    :goto_14
    new-instance p0, Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;

    if-eqz p1, :cond_10

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11

    :cond_10
    move-object p1, v2

    :cond_11
    if-eqz p4, :cond_13

    .line 46
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_12

    goto :goto_15

    :cond_12
    move-object v2, p2

    .line 47
    :cond_13
    :goto_15
    invoke-direct {p0, v1, p1, v2}, Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_5
    move-exception p0

    :goto_16
    if-eqz v0, :cond_14

    .line 48
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_17

    :catch_d
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_17
    if-eqz p5, :cond_15

    .line 50
    :try_start_f
    invoke-virtual {p5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_18

    :catch_e
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_18
    if-eqz p6, :cond_16

    .line 52
    :try_start_10
    invoke-virtual {p6}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_19

    :catch_f
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    :goto_19
    if-eqz p2, :cond_17

    .line 54
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_17
    throw p0
.end method
