.class public final Lorg/apache/poi/hslf/util/LocaleDateFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;,
        Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;,
        Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;,
        Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatId;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/hslf/util/LocaleDateFormat;->isOldFmt()Z

    move-result v0

    return v0
.end method

.method private static isOldFmt()Z
    .locals 2

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static map(Lorg/apache/poi/util/LocaleID;ILorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatId;)Ljava/time/format/DateTimeFormatter;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/LocaleID;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatId;->PPT:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatId;

    if-ne p2, v1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->mapFormatId(Lorg/apache/poi/util/LocaleID;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->mapFormatId(Lorg/apache/poi/util/LocaleID;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->mapFormatId(Ljava/util/Locale;I)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method
