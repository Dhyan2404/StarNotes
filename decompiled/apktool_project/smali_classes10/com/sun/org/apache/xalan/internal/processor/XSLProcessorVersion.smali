.class public Lcom/sun/org/apache/xalan/internal/processor/XSLProcessorVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVELOPMENT:I = 0x0

.field public static final LANGUAGE:Ljava/lang/String; = "Java"

.field public static final MAINTENANCE:I = 0x0

.field public static final PRODUCT:Ljava/lang/String; = "Xalan"

.field public static final RELEASE:I = 0x6

.field public static final S_VERSION:Ljava/lang/String; = "Xalan Java 2.6.0"

.field public static final VERSION:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Xalan Java 2.6.0"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
