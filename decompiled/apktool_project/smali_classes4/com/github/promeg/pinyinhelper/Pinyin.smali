.class public final Lcom/github/promeg/pinyinhelper/Pinyin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    }
.end annotation


# static fields
.field public static a:Lorg/ahocorasick/trie/Trie;

.field public static b:Lcom/sunia/HTREnginev2/tdm;

.field public static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation
.end field


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

.method public static a([B[BI)S
    .locals 2

    div-int/lit8 v0, p2, 0x8

    rem-int/lit8 v1, p2, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    aget-byte p0, p0, v0

    sget-object p2, Lcom/sunia/HTREnginev2/g4l;->g:[I

    aget p2, p2, v1

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    or-int/lit16 p0, p1, 0x100

    int-to-short p1, p0

    :cond_0
    return p1
.end method

.method public static add(Lcom/github/promeg/pinyinhelper/PinyinDict;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    sget-object v1, Lcom/github/promeg/pinyinhelper/Pinyin;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;-><init>(Ljava/util/List;Lcom/github/promeg/pinyinhelper/Pinyin$a;)V

    invoke-virtual {v0, p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p0

    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(C)I
    .locals 3

    add-int/lit16 p0, p0, -0x4e00

    const/16 v0, 0x1b58

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/d4l;->a:[B

    sget-object v1, Lcom/sunia/HTREnginev2/d4l;->b:[B

    invoke-static {v0, v1, p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->a([B[BI)S

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x36b0

    if-gt v0, p0, :cond_1

    if-ge p0, v1, :cond_1

    sget-object v1, Lcom/sunia/HTREnginev2/e4l;->a:[B

    sget-object v2, Lcom/sunia/HTREnginev2/e4l;->b:[B

    sub-int/2addr p0, v0

    invoke-static {v1, v2, p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->a([B[BI)S

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/sunia/HTREnginev2/f4l;->a:[B

    sget-object v2, Lcom/sunia/HTREnginev2/f4l;->b:[B

    sub-int/2addr p0, v1

    invoke-static {v0, v2, p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->a([B[BI)S

    move-result p0

    return p0
.end method

.method public static init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->c:Ljava/util/List;

    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->a:Lorg/ahocorasick/trie/Trie;

    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->b:Lcom/sunia/HTREnginev2/tdm;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/promeg/pinyinhelper/Pinyin;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/kzn;->a(Ljava/util/List;)Lorg/ahocorasick/trie/Trie;

    move-result-object v0

    sput-object v0, Lcom/github/promeg/pinyinhelper/Pinyin;->a:Lorg/ahocorasick/trie/Trie;

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->b()Lcom/sunia/HTREnginev2/tdm;

    move-result-object p0

    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->b:Lcom/sunia/HTREnginev2/tdm;

    return-void
.end method

.method public static isChinese(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-gt v0, p0, :cond_0

    const v0, 0x9fa5

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->b(C)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/16 v0, 0x3007

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static newConfig()Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    .locals 2

    new-instance v0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;-><init>(Ljava/util/List;Lcom/github/promeg/pinyinhelper/Pinyin$a;)V

    return-object v0
.end method

.method public static toPinyin(C)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->isChinese(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3007

    if-ne p0, v0, :cond_0

    const-string p0, "LING"

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/g4l;->i:[Ljava/lang/String;

    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->b(C)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/github/promeg/pinyinhelper/Pinyin;->a:Lorg/ahocorasick/trie/Trie;

    sget-object v1, Lcom/github/promeg/pinyinhelper/Pinyin;->c:Ljava/util/List;

    sget-object v2, Lcom/github/promeg/pinyinhelper/Pinyin;->b:Lcom/sunia/HTREnginev2/tdm;

    invoke-static {p0, v0, v1, p1, v2}, Lcom/sunia/HTREnginev2/sqf;->b(Ljava/lang/String;Lorg/ahocorasick/trie/Trie;Ljava/util/List;Ljava/lang/String;Lcom/sunia/HTREnginev2/tdm;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
