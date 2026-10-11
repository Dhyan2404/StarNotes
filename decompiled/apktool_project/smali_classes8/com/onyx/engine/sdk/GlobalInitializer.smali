.class public Lcom/onyx/engine/sdk/GlobalInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static initialized:Z

.field private static sAbsoluteLineSpacing:Z

.field private static sAbsoluteParagraphSpacing:Z

.field private static sScaleImage:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "engine_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->initialized:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sScaleImage:Z

    sput-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteLineSpacing:Z

    sput-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteParagraphSpacing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAbsoluteLineSpacing()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteLineSpacing:Z

    return v0
.end method

.method public static isAbsoluteParagraphSpacing()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteParagraphSpacing:Z

    return v0
.end method

.method public static isScaleImage()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sScaleImage:Z

    return v0
.end method

.method private static native nativeSetAbsoluteLineSpacing(Z)V
.end method

.method private static native nativeSetAbsoluteParagraphSpacing(Z)V
.end method

.method private static native nativeSetGlobalConfig(Ljava/lang/String;)Z
.end method

.method private static native nativeSetLogLevel(I)V
.end method

.method private static native nativeSetScaleImage(Z)V
.end method

.method public static setAbsoluteLineSpacing(Z)V
    .locals 1

    sget-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteLineSpacing:Z

    if-eq v0, p0, :cond_0

    invoke-static {p0}, Lcom/onyx/engine/sdk/GlobalInitializer;->nativeSetAbsoluteLineSpacing(Z)V

    sput-boolean p0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteLineSpacing:Z

    :cond_0
    return-void
.end method

.method public static setAbsoluteParagraphSpacing(Z)V
    .locals 1

    sget-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteParagraphSpacing:Z

    if-eq v0, p0, :cond_0

    invoke-static {p0}, Lcom/onyx/engine/sdk/GlobalInitializer;->nativeSetAbsoluteParagraphSpacing(Z)V

    sput-boolean p0, Lcom/onyx/engine/sdk/GlobalInitializer;->sAbsoluteParagraphSpacing:Z

    :cond_0
    return-void
.end method

.method public static setGlobalConfig(Lcom/onyx/engine/sdk/GlobalConfig;)V
    .locals 3

    sget-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/GlobalConfig;->isSetResourcePath()Z

    move-result v0

    const-string v1, "Config:"

    const-class v2, Lcom/onyx/engine/sdk/GlobalInitializer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/GlobalConfig;->isSetDefaultFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/GlobalConfig;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/GlobalInitializer;->nativeSetGlobalConfig(Ljava/lang/String;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/onyx/engine/sdk/GlobalInitializer;->initialized:Z

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/GlobalConfig;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set default fonts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/GlobalConfig;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set resource path"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLogLevel(Lcom/onyx/engine/sdk/LogLevel;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/onyx/engine/sdk/GlobalInitializer;->nativeSetLogLevel(I)V

    return-void
.end method

.method public static setScaleImage(Z)V
    .locals 1

    sget-boolean v0, Lcom/onyx/engine/sdk/GlobalInitializer;->sScaleImage:Z

    if-eq v0, p0, :cond_0

    invoke-static {p0}, Lcom/onyx/engine/sdk/GlobalInitializer;->nativeSetScaleImage(Z)V

    sput-boolean p0, Lcom/onyx/engine/sdk/GlobalInitializer;->sScaleImage:Z

    :cond_0
    return-void
.end method
