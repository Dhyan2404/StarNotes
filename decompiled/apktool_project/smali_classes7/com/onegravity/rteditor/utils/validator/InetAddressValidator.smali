.class public Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final IPV4_REGEX:Ljava/lang/String; = "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

.field private static final VALIDATOR:Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;

.field private static final serialVersionUID:J = -0xcc1a905893109a5L


# instance fields
.field private final ipv4Validator:Lcom/onegravity/rteditor/utils/validator/RegexValidator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;

    invoke-direct {v0}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->VALIDATOR:Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onegravity/rteditor/utils/validator/RegexValidator;

    const-string v1, "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/utils/validator/RegexValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->ipv4Validator:Lcom/onegravity/rteditor/utils/validator/RegexValidator;

    return-void
.end method

.method public static getInstance()Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->VALIDATOR:Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;

    return-object v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->isValidInet4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->isValidInet6Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isValidInet4Address(Ljava/lang/String;)Z
    .locals 5

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->ipv4Validator:Lcom/onegravity/rteditor/utils/validator/RegexValidator;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/utils/validator/RegexValidator;->match(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gt v0, v1, :cond_5

    aget-object v1, p0, v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    return p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return p1

    :cond_5
    return v2
.end method

.method public isValidInet6Address(Ljava/lang/String;)Z
    .locals 11

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1

    return v3

    :cond_1
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    return v3

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, ""

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    :cond_7
    array-length v0, v5

    const/16 v6, 0x8

    if-le v0, v6, :cond_8

    return v3

    :cond_8
    move v0, v3

    move v7, v0

    move v8, v7

    :goto_2
    array-length v9, v5

    if-ge v0, v9, :cond_13

    aget-object v9, v5, v0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    add-int/2addr v8, v2

    if-le v8, v2, :cond_11

    return v3

    :cond_9
    const-string v8, "."

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-le v8, v4, :cond_e

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    return v3

    :cond_a
    array-length v8, v5

    sub-int/2addr v8, v2

    if-gt v0, v8, :cond_d

    const/4 v8, 0x6

    if-le v0, v8, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v9}, Lcom/onegravity/rteditor/utils/validator/InetAddressValidator;->isValidInet4Address(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    return v3

    :cond_c
    add-int/lit8 v7, v7, 0x2

    move v8, v3

    goto :goto_4

    :cond_d
    :goto_3
    return v3

    :cond_e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x4

    if-le v8, v10, :cond_f

    return v3

    :cond_f
    const/16 v8, 0x10

    :try_start_0
    invoke-static {v9, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v8, :cond_12

    const v9, 0xffff

    if-le v8, v9, :cond_10

    goto :goto_5

    :cond_10
    move v8, v3

    :cond_11
    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    :cond_12
    :goto_5
    return v3

    :cond_13
    if-ge v7, v6, :cond_14

    if-nez v1, :cond_14

    return v3

    :cond_14
    return v2
.end method
