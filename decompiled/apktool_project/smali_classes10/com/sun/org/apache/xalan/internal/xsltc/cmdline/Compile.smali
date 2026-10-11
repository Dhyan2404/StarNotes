.class public final Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static VERSION_DELTA:I = 0x0

.field private static VERSION_MAJOR:I = 0x1

.field private static VERSION_MINOR:I = 0x4

.field private static _allowExit:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;

    const-string v2, "o:d:j:p:uxhsinv"

    invoke-direct {v1, p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    array-length p0, p0

    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->printUsage()V

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->init()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->getNextOption()I

    move-result v7

    if-eq v7, v0, :cond_7

    const/16 v8, 0x64

    if-eq v7, v8, :cond_6

    const/16 v8, 0x73

    if-eq v7, v8, :cond_5

    const/16 v8, 0x75

    if-eq v7, v8, :cond_4

    const/16 v8, 0x78

    if-eq v7, v8, :cond_3

    const/16 v8, 0x69

    if-eq v7, v8, :cond_2

    const/16 v8, 0x6a

    if-eq v7, v8, :cond_1

    packed-switch v7, :pswitch_data_0

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->printUsage()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->getOptionArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setPackageName(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->getOptionArg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setClassName(Ljava/lang/String;)V

    move v5, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setTemplateInlining(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->getOptionArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setJarFileName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setDebug(Z)V

    goto :goto_0

    :cond_4
    move v6, v2

    goto :goto_0

    :cond_5
    sput-boolean v3, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->_allowExit:Z

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->getOptionArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setDestDirectory(Ljava/lang/String;)Z

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_9

    if-nez v5, :cond_8

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v4, "COMPILE_STDIN_ERR"

    invoke-direct {v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->_allowExit:Z

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_8
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOpt;->getCmdArgs()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v4, v3

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_b

    aget-object v5, v1, v4

    if-eqz v6, :cond_a

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v7

    :goto_2
    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Ljava/util/Vector;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->printWarnings()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getJarFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->outputToJar()V

    :cond_c
    sget-boolean p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->_allowExit:Z

    if-eqz p0, :cond_e

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->printWarnings()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->printErrors()V

    sget-boolean p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->_allowExit:Z

    if-eqz p0, :cond_e

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/getopt/GetOptsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean p0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->_allowExit:Z

    if-eqz p0, :cond_e

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    :catch_1
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->printUsage()V

    :cond_e
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printUsage()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XSLTC version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->VERSION_MAJOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->VERSION_MINOR:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v3, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->VERSION_DELTA:I

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->VERSION_DELTA:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v3, "COMPILE_USAGE_STR"

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/sun/org/apache/xalan/internal/xsltc/cmdline/Compile;->_allowExit:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method
