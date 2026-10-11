.class public final Lcom/onyx/android/sdk/base/extension/CharKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000c\n\u0002\u0008\u0006\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "isAlpha",
        "",
        "",
        "isChinese",
        "isChineseCharacter",
        "isEnglishLetterOrDigit",
        "isJapaneseCharacter",
        "isKoreanCharacter",
        "sdk-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isAlpha(C)Z
    .locals 4

    const/16 v0, 0x41

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_10

    const/16 v0, 0xc0

    if-gt v0, p0, :cond_1

    const/16 v0, 0xd7

    if-ge p0, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_10

    const/16 v0, 0xd8

    if-gt v0, p0, :cond_2

    const/16 v0, 0xf7

    if-ge p0, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-nez v0, :cond_10

    const/16 v0, 0xf8

    const/16 v3, 0x100

    if-gt v0, p0, :cond_3

    if-ge p0, v3, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-nez v0, :cond_10

    const/16 v0, 0x180

    if-gt v3, p0, :cond_4

    if-ge p0, v0, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    if-nez v3, :cond_10

    if-gt v0, p0, :cond_5

    const/16 v0, 0x250

    if-ge p0, v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-nez v0, :cond_10

    const/16 v0, 0x386

    if-eq v0, p0, :cond_10

    const/16 v0, 0x388

    const/16 v3, 0x400

    if-gt v0, p0, :cond_6

    if-ge p0, v3, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    if-nez v0, :cond_10

    if-gt v3, p0, :cond_7

    const/16 v0, 0x482

    if-ge p0, v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    if-nez v0, :cond_10

    const/16 v0, 0x48a

    const/16 v3, 0x500

    if-gt v0, p0, :cond_8

    if-ge p0, v3, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    if-nez v0, :cond_10

    if-gt v3, p0, :cond_9

    const/16 v0, 0x530

    if-ge p0, v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    if-nez v0, :cond_10

    const/16 v0, 0x1e00

    if-gt v0, p0, :cond_a

    const/16 v0, 0x1f00

    if-ge p0, v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    if-nez v0, :cond_10

    const/16 v0, 0x600

    if-gt v0, p0, :cond_b

    const/16 v0, 0x700

    if-ge p0, v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    if-nez v0, :cond_10

    const/16 v0, 0x750

    if-gt v0, p0, :cond_c

    const/16 v0, 0x780

    if-ge p0, v0, :cond_c

    move v0, v1

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    if-nez v0, :cond_10

    const v0, 0xfb50

    if-gt v0, p0, :cond_d

    const v0, 0xfe00

    if-ge p0, v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_d
    move v0, v2

    :goto_d
    if-nez v0, :cond_10

    const v0, 0xfe70

    if-gt v0, p0, :cond_e

    const v0, 0xff00

    if-ge p0, v0, :cond_e

    move p0, v1

    goto :goto_e

    :cond_e
    move p0, v2

    :goto_e
    if-eqz p0, :cond_f

    goto :goto_f

    :cond_f
    move v1, v2

    :cond_10
    :goto_f
    return v1
.end method

.method public static final isChinese(C)Z
    .locals 3

    const/16 v0, 0x3000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const v0, 0xd800

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    const v0, 0xf900

    if-gt v0, p0, :cond_1

    const v0, 0xfb00

    if-ge p0, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    const v0, 0xfe30

    if-gt v0, p0, :cond_2

    const v0, 0xfe4f

    if-ge p0, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-nez v0, :cond_5

    const v0, 0xff01

    if-gt v0, p0, :cond_3

    const v0, 0xff20

    if-ge p0, v0, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    move p0, v2

    :goto_3
    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :cond_5
    :goto_4
    return v1
.end method

.method public static final isChineseCharacter(C)Z
    .locals 2

    const/16 v0, 0x4e00

    const/4 v1, 0x0

    if-gt v0, p0, :cond_0

    const v0, 0xa000

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final isEnglishLetterOrDigit(C)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[A-Za-z0-9]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final isJapaneseCharacter(C)Z
    .locals 4

    const/16 v0, 0x3040

    const/16 v1, 0x30a0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, p0, :cond_0

    if-ge p0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    if-gt v1, p0, :cond_1

    const/16 v0, 0x3100

    if-ge p0, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    const/16 v0, 0x4e00

    if-gt v0, p0, :cond_2

    const v0, 0xa000

    if-ge p0, v0, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    return v2
.end method

.method public static final isKoreanCharacter(C)Z
    .locals 3

    const v0, 0xac00

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const v0, 0xd7a4

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    const/16 v0, 0x1100

    if-gt v0, p0, :cond_1

    const/16 v0, 0x1200

    if-ge p0, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    const/16 v0, 0x3130

    if-gt v0, p0, :cond_2

    const/16 v0, 0x3190

    if-ge p0, v0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1
.end method
