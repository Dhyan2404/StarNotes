.class public final Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;
.super Ljava/text/SimpleDateFormat;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cJ \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0005\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;",
        "Ljava/text/SimpleDateFormat;",
        "pattern",
        "",
        "(Ljava/lang/String;)V",
        "CHINESE_NUM_END_SYMBOL",
        "getCHINESE_NUM_END_SYMBOL",
        "()Ljava/lang/String;",
        "CHINESE_NUM_START_SYMBOL",
        "getCHINESE_NUM_START_SYMBOL",
        "dateValueToChineseStr",
        "value",
        "",
        "format",
        "Ljava/lang/StringBuffer;",
        "date",
        "Ljava/util/Date;",
        "toAppendTo",
        "pos",
        "Ljava/text/FieldPosition;",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final CHINESE_NUM_END_SYMBOL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final CHINESE_NUM_START_SYMBOL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p1, "C"

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_START_SYMBOL:Ljava/lang/String;

    const-string p1, "N"

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_END_SYMBOL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dateValueToChineseStr(I)Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 p0, 0x1f

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/note/R$array;->chinese_number_array:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v4, p1

    move v5, v1

    :goto_1
    if-eqz v4, :cond_4

    add-int/2addr v5, v0

    const/4 v6, 0x2

    const/16 v7, 0xa

    if-eqz p0, :cond_1

    if-ne v5, v6, :cond_1

    aget-object v8, v3, v7

    invoke-virtual {v2, v1, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    rem-int/lit8 v8, v4, 0xa

    if-lt p1, v7, :cond_2

    const/16 v7, 0x14

    if-ge p1, v7, :cond_2

    if-eq v5, v6, :cond_3

    :cond_2
    aget-object v6, v3, v8

    invoke-virtual {v2, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/StringBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/text/FieldPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toAppendTo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->isChinese()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_START_SYMBOL:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_END_SYMBOL:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_START_SYMBOL:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_END_SYMBOL:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz p2, :cond_1

    if-ge p2, v0, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-eqz p3, :cond_0

    new-instance p3, Lkotlin/text/Regex;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->dateValueToChineseStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lkotlin/text/Regex;->replaceFirst(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCHINESE_NUM_END_SYMBOL()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_END_SYMBOL:Ljava/lang/String;

    return-object p0
.end method

.method public final getCHINESE_NUM_START_SYMBOL()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampFormat;->CHINESE_NUM_START_SYMBOL:Ljava/lang/String;

    return-object p0
.end method
