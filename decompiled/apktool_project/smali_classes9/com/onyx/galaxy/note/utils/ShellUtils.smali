.class public final Lcom/onyx/galaxy/note/utils/ShellUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShellUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShellUtils.kt\ncom/onyx/galaxy/note/utils/ShellUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J;\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\rJ\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/ShellUtils;",
        "",
        "",
        "checkRootPermission",
        "",
        "command",
        "isRoot",
        "Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;",
        "execCommand",
        "isNeedResultMsg",
        "",
        "commands",
        "destroy",
        "([Ljava/lang/String;ZZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;",
        "Ljava/lang/Process;",
        "process",
        "",
        "a",
        "COMMAND_SU",
        "Ljava/lang/String;",
        "COMMAND_SH",
        "COMMAND_EXIT",
        "COMMAND_LINE_END",
        "COMMAND_NEW_LINE",
        "<init>",
        "()V",
        "CommandResult",
        "note_overseasRelease"
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
        "SMAP\nShellUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShellUtils.kt\ncom/onyx/galaxy/note/utils/ShellUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMMAND_NEW_LINE:Ljava/lang/String; = "\r\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMMAND_SU:Ljava/lang/String; = "su"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/ShellUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/ShellUtils;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/ShellUtils;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/ShellUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ShellUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic execCommand$default(Lcom/onyx/galaxy/note/utils/ShellUtils;[Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Process;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :goto_0
    return-void
.end method

.method public final checkRootPermission()Z
    .locals 3

    const-string v0, "echo root"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;->getResult()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public final execCommand(Ljava/lang/String;Z)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/onyx/galaxy/note/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public final execCommand(Ljava/lang/String;ZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/galaxy/note/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public final execCommand([Ljava/lang/String;Z)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
    .locals 7
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/utils/ShellUtils;->execCommand$default(Lcom/onyx/galaxy/note/utils/ShellUtils;[Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public final execCommand([Ljava/lang/String;ZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
    .locals 7
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/utils/ShellUtils;->execCommand$default(Lcom/onyx/galaxy/note/utils/ShellUtils;[Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public final execCommand([Ljava/lang/String;ZZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;
    .locals 8
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_17

    .line 5
    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_1e

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string p2, "su"

    goto :goto_0

    :cond_1
    const-string p2, "sh"

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 8
    :try_start_2
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "\n"

    .line 10
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_1

    :cond_3
    const-string p1, "exit\n"

    .line 12
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    if-eqz p3, :cond_5

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17
    :try_start_5
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v6, "\r\n"

    if-eqz v5, :cond_4

    .line 19
    :try_start_7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 20
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v4, v0

    goto/16 :goto_b

    :catch_0
    move-exception v4

    move-object v5, v0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v4

    goto/16 :goto_5

    :catch_1
    move-exception v4

    move-object v5, v0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v4

    goto/16 :goto_8

    :catch_2
    move-exception v3

    move-object v4, v0

    move-object v5, v4

    move-object v7, p2

    move-object p2, p1

    move-object p1, v3

    goto/16 :goto_6

    :catch_3
    move-exception v3

    move-object v4, v0

    move-object v5, v4

    move-object v7, p2

    move-object p2, p1

    move-object p1, v3

    goto/16 :goto_9

    :catch_4
    move-exception p3

    move-object v4, v0

    move-object v5, v4

    move-object v3, v2

    move-object v2, v5

    move-object v7, p2

    move-object p2, p1

    move-object p1, p3

    goto :goto_7

    :catch_5
    move-exception p3

    move-object v4, v0

    move-object v5, v4

    move-object v3, v2

    move-object v2, v5

    move-object v7, p2

    move-object p2, p1

    move-object p1, p3

    goto :goto_a

    :cond_5
    move-object p1, v0

    move-object p3, p1

    move-object v3, p3

    move-object v4, v3

    .line 22
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Process;->waitFor()I

    move-result v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 23
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    if-eqz v3, :cond_7

    .line 24
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v4, :cond_8

    .line 25
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_4
    if-eqz p4, :cond_10

    .line 27
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/utils/ShellUtils;->a(Ljava/lang/Process;)V

    goto/16 :goto_18

    :catchall_1
    move-exception p1

    goto :goto_b

    :catch_7
    move-exception v5

    move-object v7, p2

    move-object p2, p1

    move-object p1, v5

    move-object v5, v4

    :goto_5
    move-object v4, v3

    :goto_6
    move-object v3, v2

    move-object v2, p3

    :goto_7
    move-object p3, v7

    goto/16 :goto_e

    :catch_8
    move-exception v5

    move-object v7, p2

    move-object p2, p1

    move-object p1, v5

    move-object v5, v4

    :goto_8
    move-object v4, v3

    :goto_9
    move-object v3, v2

    move-object v2, p3

    :goto_a
    move-object p3, v7

    goto/16 :goto_13

    :catchall_2
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    :goto_b
    move-object v0, v2

    goto/16 :goto_1a

    :catch_9
    move-exception p1

    move-object p3, p2

    move-object p2, v0

    move-object v4, p2

    move-object v5, v4

    move-object v3, v2

    move-object v2, v5

    goto :goto_e

    :catch_a
    move-exception p1

    move-object p3, p2

    move-object p2, v0

    move-object v4, p2

    move-object v5, v4

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_13

    :catchall_3
    move-exception p1

    move-object v3, v0

    goto :goto_c

    :catch_b
    move-exception p1

    move-object p3, p2

    move-object p2, v0

    move-object v2, p2

    goto :goto_d

    :catch_c
    move-exception p1

    move-object p3, p2

    move-object p2, v0

    move-object v2, p2

    goto :goto_12

    :catchall_4
    move-exception p1

    move-object p2, v0

    move-object v3, p2

    :goto_c
    move-object v4, v3

    goto/16 :goto_1a

    :catch_d
    move-exception p1

    move-object p2, v0

    move-object p3, p2

    move-object v2, p3

    :goto_d
    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    .line 28
    :goto_e
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v3, :cond_9

    .line 29
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_f

    :catch_e
    move-exception p1

    goto :goto_10

    :cond_9
    :goto_f
    if-eqz v4, :cond_a

    .line 30
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v5, :cond_b

    .line 31
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_11

    .line 32
    :goto_10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_11
    if-eqz p3, :cond_f

    if-eqz p4, :cond_f

    goto :goto_17

    :catch_f
    move-exception p1

    move-object p2, v0

    move-object p3, p2

    move-object v2, p3

    :goto_12
    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    .line 33
    :goto_13
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v3, :cond_c

    .line 34
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_14

    :catch_10
    move-exception p1

    goto :goto_15

    :cond_c
    :goto_14
    if-eqz v4, :cond_d

    .line 35
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v5, :cond_e

    .line 36
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_16

    .line 37
    :goto_15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_16
    if-eqz p3, :cond_f

    if-eqz p4, :cond_f

    .line 38
    :goto_17
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/utils/ShellUtils;->a(Ljava/lang/Process;)V

    :cond_f
    move-object p1, p2

    move-object p3, v2

    .line 39
    :cond_10
    :goto_18
    new-instance p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_11
    move-object p1, v0

    :goto_19
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    invoke-direct {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_5
    move-exception p1

    move-object p2, p3

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    :goto_1a
    if-eqz v0, :cond_13

    .line 40
    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1b

    :catch_11
    move-exception p3

    goto :goto_1c

    :cond_13
    :goto_1b
    if-eqz v3, :cond_14

    .line 41
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v4, :cond_15

    .line 42
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_1d

    .line 43
    :goto_1c
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_1d
    if-eqz p2, :cond_16

    if-eqz p4, :cond_16

    .line 44
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/utils/ShellUtils;->a(Ljava/lang/Process;)V

    :cond_16
    throw p1

    .line 45
    :cond_17
    :goto_1e
    new-instance p0, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;

    invoke-direct {p0, v1, v0, v0}, Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
