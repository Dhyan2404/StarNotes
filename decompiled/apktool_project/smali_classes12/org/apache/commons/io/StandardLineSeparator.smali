.class public final enum Lorg/apache/commons/io/StandardLineSeparator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/StandardLineSeparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/StandardLineSeparator;

.field public static final enum CR:Lorg/apache/commons/io/StandardLineSeparator;

.field public static final enum CRLF:Lorg/apache/commons/io/StandardLineSeparator;

.field public static final enum LF:Lorg/apache/commons/io/StandardLineSeparator;


# instance fields
.field private final lineSeparator:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/commons/io/StandardLineSeparator;

    const/4 v1, 0x0

    const-string v2, "\r"

    const-string v3, "CR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/io/StandardLineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/io/StandardLineSeparator;->CR:Lorg/apache/commons/io/StandardLineSeparator;

    new-instance v1, Lorg/apache/commons/io/StandardLineSeparator;

    const/4 v2, 0x1

    const-string v3, "\r\n"

    const-string v4, "CRLF"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/commons/io/StandardLineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/io/StandardLineSeparator;->CRLF:Lorg/apache/commons/io/StandardLineSeparator;

    new-instance v2, Lorg/apache/commons/io/StandardLineSeparator;

    const/4 v3, 0x2

    const-string v4, "\n"

    const-string v5, "LF"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/commons/io/StandardLineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/io/StandardLineSeparator;->LF:Lorg/apache/commons/io/StandardLineSeparator;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/io/StandardLineSeparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/StandardLineSeparator;->$VALUES:[Lorg/apache/commons/io/StandardLineSeparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "lineSeparator"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/commons/io/StandardLineSeparator;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/StandardLineSeparator;
    .locals 1

    const-class v0, Lorg/apache/commons/io/StandardLineSeparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/StandardLineSeparator;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/StandardLineSeparator;
    .locals 1

    sget-object v0, Lorg/apache/commons/io/StandardLineSeparator;->$VALUES:[Lorg/apache/commons/io/StandardLineSeparator;

    invoke-virtual {v0}, [Lorg/apache/commons/io/StandardLineSeparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/StandardLineSeparator;

    return-object v0
.end method


# virtual methods
.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/io/StandardLineSeparator;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/io/StandardLineSeparator;->lineSeparator:Ljava/lang/String;

    return-object p0
.end method
