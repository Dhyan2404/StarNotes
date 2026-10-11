.class public final Lcom/alibaba/fastjson2/JSONWriter$Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation


# static fields
.field public static final ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field public e:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field public final parent:Lcom/alibaba/fastjson2/JSONWriter$Path;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    const/4 v1, 0x0

    const-string v2, "$"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Path;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, Lcom/alibaba/fastjson2/JSONWriter$Path;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/JSONWriter$Path;

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->b:I

    iget v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-eq v2, v3, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter$Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    :cond_3
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    if-eqz p0, :cond_4

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    iget p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/alibaba/fastjson2/JSONWriter$Path;

    const/4 v3, 0x0

    move-object v4, p0

    move v5, v3

    :goto_0
    if-eqz v4, :cond_2

    array-length v6, v2

    if-ne v6, v5, :cond_1

    array-length v6, v2

    add-int/2addr v6, v1

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alibaba/fastjson2/JSONWriter$Path;

    :cond_1
    aput-object v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    sub-int/2addr v5, v1

    move v7, v1

    move v6, v3

    move v4, v5

    :goto_1
    if-ltz v4, :cond_16

    aget-object v8, v2, v4

    iget-object v9, v8, Lcom/alibaba/fastjson2/JSONWriter$Path;->a:Ljava/lang/String;

    const/4 v10, 0x2

    if-nez v9, :cond_4

    iget v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Path;->b:I

    invoke-static {v8}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v9

    :goto_2
    add-int v11, v6, v9

    add-int/2addr v11, v10

    array-length v12, v0

    if-lt v11, v12, :cond_3

    array-length v11, v0

    array-length v12, v0

    shr-int/2addr v12, v1

    add-int/2addr v11, v12

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v6, 0x1

    const/16 v10, 0x5b

    aput-byte v10, v0, v6

    invoke-static {v0, v9, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    const/16 v9, 0x5d

    aput-byte v9, v0, v6

    move v6, v8

    goto/16 :goto_8

    :cond_4
    add-int/lit8 v8, v6, 0x1

    array-length v11, v0

    if-lt v8, v11, :cond_5

    array-length v11, v0

    array-length v12, v0

    shr-int/2addr v12, v1

    add-int/2addr v11, v12

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_5
    if-eq v4, v5, :cond_6

    const/16 v11, 0x2e

    aput-byte v11, v0, v6

    move v6, v8

    :cond_6
    move v8, v3

    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_15

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x60

    if-eq v11, v12, :cond_13

    const/16 v12, 0x7e

    if-eq v11, v12, :cond_13

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    packed-switch v11, :pswitch_data_3

    packed-switch v11, :pswitch_data_4

    if-lt v11, v1, :cond_8

    const/16 v12, 0x7f

    if-gt v11, v12, :cond_8

    array-length v12, v0

    if-ne v6, v12, :cond_7

    array-length v12, v0

    array-length v13, v0

    shr-int/2addr v13, v1

    add-int/2addr v12, v13

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_7
    add-int/lit8 v12, v6, 0x1

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    move v6, v12

    goto/16 :goto_7

    :cond_8
    const v7, 0xd800

    const/16 v12, 0x3f

    if-lt v11, v7, :cond_f

    const v7, 0xe000

    if-ge v11, v7, :cond_f

    const v13, 0xdc00

    if-ge v11, v13, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v4

    if-ge v14, v10, :cond_9

    const/4 v7, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v13, :cond_d

    if-ge v14, v7, :cond_d

    shl-int/lit8 v7, v11, 0xa

    add-int/2addr v7, v14

    const v11, -0x35fdc00

    add-int/2addr v7, v11

    :goto_4
    if-gez v7, :cond_b

    array-length v7, v0

    if-ne v6, v7, :cond_a

    array-length v7, v0

    array-length v11, v0

    shr-int/2addr v11, v1

    add-int/2addr v7, v11

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_a
    add-int/lit8 v7, v6, 0x1

    aput-byte v12, v0, v6

    goto :goto_5

    :cond_b
    add-int/lit8 v11, v6, 0x3

    array-length v13, v0

    if-lt v11, v13, :cond_c

    array-length v11, v0

    array-length v13, v0

    shr-int/2addr v13, v1

    add-int/2addr v11, v13

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_c
    add-int/lit8 v11, v6, 0x1

    shr-int/lit8 v13, v7, 0x12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v0, v6

    add-int/lit8 v6, v11, 0x1

    shr-int/lit8 v13, v7, 0xc

    and-int/2addr v13, v12

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    aput-byte v13, v0, v11

    add-int/lit8 v11, v6, 0x1

    shr-int/lit8 v13, v7, 0x6

    and-int/2addr v12, v13

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v6, v11, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v11

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    goto :goto_5

    :cond_d
    add-int/lit8 v7, v6, 0x1

    aput-byte v12, v0, v6

    goto :goto_5

    :cond_e
    add-int/lit8 v7, v6, 0x1

    aput-byte v12, v0, v6

    goto :goto_5

    :cond_f
    const/16 v7, 0x7ff

    if-le v11, v7, :cond_11

    add-int/lit8 v7, v6, 0x2

    array-length v13, v0

    if-lt v7, v13, :cond_10

    array-length v7, v0

    array-length v13, v0

    shr-int/2addr v13, v1

    add-int/2addr v7, v13

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_10
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v13, v11, 0xc

    and-int/lit8 v13, v13, 0xf

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v0, v6

    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v13, v11, 0x6

    and-int/2addr v12, v13

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v0, v7

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    :goto_5
    move v6, v7

    goto :goto_6

    :cond_11
    add-int/lit8 v7, v6, 0x1

    array-length v12, v0

    if-lt v7, v12, :cond_12

    array-length v12, v0

    array-length v13, v0

    shr-int/2addr v13, v1

    add-int/2addr v12, v13

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_12
    shr-int/lit8 v12, v11, 0x6

    and-int/lit8 v12, v12, 0x1f

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v0, v7

    :goto_6
    move v7, v3

    goto :goto_7

    :cond_13
    :pswitch_0
    add-int/lit8 v12, v6, 0x1

    array-length v13, v0

    if-lt v12, v13, :cond_14

    array-length v13, v0

    array-length v14, v0

    shr-int/2addr v14, v1

    add-int/2addr v13, v14

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_14
    const/16 v13, 0x5c

    aput-byte v13, v0, v6

    add-int/lit8 v6, v12, 0x1

    int-to-byte v11, v11

    aput-byte v11, v0, v12

    :goto_7
    add-int/2addr v8, v1

    goto/16 :goto_3

    :cond_15
    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    :cond_16
    new-instance v1, Ljava/lang/String;

    if-eqz v7, :cond_17

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_9

    :cond_17
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_9
    invoke-direct {v1, v0, v3, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->c:Ljava/lang/String;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
