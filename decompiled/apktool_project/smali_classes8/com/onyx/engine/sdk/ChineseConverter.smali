.class public Lcom/onyx/engine/sdk/ChineseConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/engine/sdk/ChineseConverter;->nativeConvert(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeConvert(Ljava/lang/String;I)Ljava/lang/String;
.end method
