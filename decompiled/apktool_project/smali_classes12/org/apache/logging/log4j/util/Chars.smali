.class public final Lorg/apache/logging/log4j/util/Chars;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CR:C = '\r'

.field public static final DQUOTE:C = '\"'

.field public static final EQ:C = '='

.field public static final LF:C = '\n'

.field public static final NUL:C = '\u0000'

.field public static final QUOTE:C = '\''

.field public static final SPACE:C = ' '

.field public static final TAB:C = '\t'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)C
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x61

    add-int/lit8 p0, p0, -0xa

    int-to-char p0, p0

    return p0
.end method

.method public static b(I)C
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    return p0
.end method

.method public static c(I)C
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x41

    add-int/lit8 p0, p0, -0xa

    int-to-char p0, p0

    return p0
.end method

.method public static getLowerCaseHex(I)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    if-ltz p0, :cond_2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->b(I)C

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->a(I)C

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getUpperCaseHex(I)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digit"
        }
    .end annotation

    if-ltz p0, :cond_2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->b(I)C

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Chars;->c(I)C

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
