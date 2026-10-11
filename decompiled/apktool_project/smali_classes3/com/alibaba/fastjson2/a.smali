.class public final Lcom/alibaba/fastjson2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static l:Ljava/nio/charset/Charset;


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:B

.field public e:I

.field public f:B

.field public g:I

.field public h:Ljava/lang/String;

.field public final i:Lcom/alibaba/fastjson2/JSONWriter;

.field public final j:Lcom/alibaba/fastjson2/SymbolTable;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLcom/alibaba/fastjson2/SymbolTable;Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/a;->k:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/alibaba/fastjson2/a;->a:[B

    .line 11
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/a;->b:Z

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson2/a;->j:Lcom/alibaba/fastjson2/SymbolTable;

    .line 13
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofPretty()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->a()V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/a;->k:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/a;->a:[B

    .line 4
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/a;->b:Z

    .line 5
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofPretty()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/a;->j:Lcom/alibaba/fastjson2/SymbolTable;

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->a:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v1, v2, v1

    iput-byte v1, v0, Lcom/alibaba/fastjson2/a;->d:B

    const/16 v4, -0x5a

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1b

    const/16 v6, 0x48

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x8

    if-eq v1, v6, :cond_1a

    const/16 v6, -0x58

    if-eq v1, v6, :cond_19

    const/16 v6, -0x57

    if-eq v1, v6, :cond_18

    const/4 v6, 0x0

    const-string v10, "#"

    packed-switch v1, :pswitch_data_0

    const-wide/16 v12, 0x0

    const/16 v4, 0x28

    const/16 v14, 0x20

    const/16 v15, 0x38

    const/16 v11, 0x30

    const-wide/16 v16, 0xff

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const/16 v4, -0x10

    if-lt v1, v4, :cond_1

    const/16 v4, 0x2f

    if-gt v1, v4, :cond_1

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_1
    const/16 v4, -0x28

    if-lt v1, v4, :cond_2

    const/16 v5, -0x11

    if-gt v1, v5, :cond_2

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x8

    int-to-long v1, v1

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :cond_2
    if-lt v1, v11, :cond_3

    const/16 v4, 0x3f

    if-gt v1, v4, :cond_3

    sub-int/2addr v1, v15

    shl-int/2addr v1, v9

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_3
    const/16 v4, 0x40

    if-lt v1, v4, :cond_4

    const/16 v4, 0x47

    if-gt v1, v4, :cond_4

    add-int/lit8 v1, v1, -0x44

    shl-int/2addr v1, v8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    add-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_4
    const/16 v4, -0x38

    if-lt v1, v4, :cond_5

    const/16 v4, -0x29

    if-gt v1, v4, :cond_5

    add-int/lit8 v1, v1, 0x30

    shl-int/2addr v1, v9

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_5
    const/16 v4, -0x40

    if-lt v1, v4, :cond_6

    const/16 v4, -0x39

    if-gt v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x3c

    shl-int/2addr v1, v8

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    add-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :cond_6
    const/16 v2, -0x6c

    if-lt v1, v2, :cond_7

    const/16 v2, -0x5c

    if-gt v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->b()V

    return-void

    :cond_7
    const/16 v2, 0x49

    if-lt v1, v2, :cond_a

    const/16 v2, 0x79

    if-gt v1, v2, :cond_a

    const/16 v2, 0x79

    if-ne v1, v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v1

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, -0x49

    :goto_0
    iput v1, v0, Lcom/alibaba/fastjson2/a;->e:I

    if-gez v1, :cond_9

    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v2, "{\"$symbol\":"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    iget v2, v0, Lcom/alibaba/fastjson2/a;->e:I

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    :cond_9
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget v3, v0, Lcom/alibaba/fastjson2/a;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v0, Lcom/alibaba/fastjson2/a;->d:B

    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    iget-boolean v2, v0, Lcom/alibaba/fastjson2/a;->b:Z

    if-eqz v2, :cond_b

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/a;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v2

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->k:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/alibaba/fastjson2/a;->b:Z

    if-eqz v3, :cond_d

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson2/a;->l:Ljava/nio/charset/Charset;

    if-nez v1, :cond_e

    const-string v1, "GB18030"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/a;->l:Ljava/nio/charset/Charset;

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    sget-object v5, Lcom/alibaba/fastjson2/a;->l:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    add-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/2addr v1, v4

    aget-byte v2, v2, v3

    shl-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :pswitch_7
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v0, v2, v3

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    return-void

    :pswitch_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/2addr v3, v9

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v0, v2, v4

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    int-to-short v0, v3

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16(S)V

    return-void

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    new-array v2, v1, [B

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-static {v3, v4, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;)V

    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v2, v2, v3

    const/16 v3, -0x46

    if-eq v2, v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v2

    new-array v3, v2, [B

    iget-object v4, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v7, v0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-static {v4, v7, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    :goto_2
    if-nez v1, :cond_10

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_3

    :cond_10
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v1, v3

    :goto_3
    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1, v12, v13, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0, v12, v13, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void

    :pswitch_d
    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    add-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/2addr v1, v4

    aget-byte v2, v2, v3

    shl-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    return-void

    :pswitch_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    return-void

    :pswitch_f
    add-int/lit8 v1, v3, 0x7

    aget-byte v1, v2, v1

    int-to-long v5, v1

    and-long v5, v5, v16

    add-int/lit8 v1, v3, 0x6

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v9

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x5

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v8

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x4

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long v7, v12, v7

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v14

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    aget-byte v1, v2, v3

    int-to-long v1, v1

    shl-long/2addr v1, v15

    add-long/2addr v5, v1

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    :pswitch_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->j()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    :pswitch_11
    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    :pswitch_12
    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    :pswitch_13
    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void

    :pswitch_14
    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void

    :pswitch_15
    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->j()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v3

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInstant(JI)V

    goto/16 :goto_6

    :pswitch_17
    add-int/lit8 v1, v3, 0x7

    aget-byte v1, v2, v1

    int-to-long v5, v1

    and-long v5, v5, v16

    add-int/lit8 v1, v3, 0x6

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v9

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x5

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v8

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x4

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long v7, v12, v7

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v14

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    aget-byte v1, v2, v3

    int-to-long v1, v1

    shl-long/2addr v1, v15

    add-long/2addr v5, v1

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->d()V

    goto/16 :goto_6

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->f()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    goto :goto_4

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->k:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/a;->b:Z

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_13

    if-nez v5, :cond_12

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/a;->e(I)Ljava/lang/String;

    move-result-object v5

    :cond_12
    iget v1, v0, Lcom/alibaba/fastjson2/a;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/a;->c(Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v3, "@type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    if-nez v5, :cond_16

    if-gez v1, :cond_15

    iget-boolean v2, v0, Lcom/alibaba/fastjson2/a;->b:Z

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->j:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/a;->b:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_5
    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v2, "@value"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->a()V

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    new-array v2, v1, [B

    iget-object v3, v0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, v0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-static {v3, v4, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBinary([B)V

    return-void

    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    return-void

    :cond_18
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/2addr v3, v9

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v3, v1

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v2, v4

    add-int/lit8 v5, v1, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v1, v2, v1

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v3, v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD10(III)V

    goto :goto_6

    :cond_19
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/2addr v3, v9

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    aget-byte v6, v2, v4

    add-int/lit8 v3, v1, 0x1

    aget-byte v7, v2, v1

    add-int/lit8 v1, v3, 0x1

    aget-byte v8, v2, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v9, v2, v1

    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v10, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v11

    invoke-static/range {v5 .. v11}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDateTime(Ljava/time/LocalDateTime;)V

    goto :goto_6

    :cond_1a
    :pswitch_1c
    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    add-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/2addr v1, v4

    aget-byte v2, v2, v3

    shl-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_1b
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/a;->c(Ljava/lang/String;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x70
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x55
        :pswitch_17
        :pswitch_1c
        :pswitch_1c
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_17
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    iget-byte v0, p0, Lcom/alibaba/fastjson2/a;->d:B

    const/16 v1, -0x5c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x6c

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/alibaba/fastjson2/a;->d:B

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->f()Z

    move-result v1

    if-nez v1, :cond_2

    iget-byte v1, p0, Lcom/alibaba/fastjson2/a;->d:B

    const/16 v2, -0x51

    if-eq v1, v2, :cond_2

    const/16 v2, 0x49

    if-lt v1, v2, :cond_3

    const/16 v2, 0x78

    if-gt v1, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->a()V

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->d()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->a()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    const/16 v0, -0x5b

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v2, "@type"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p1, p1, v1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v0, "{}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    iget p1, p0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/a;->c:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v1, v1, v2

    const/16 v3, -0x6d

    if-eq v1, v3, :cond_e

    if-eq v1, v0, :cond_d

    const/16 v3, 0x7f

    if-eq v1, v3, :cond_8

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const/16 v2, -0x10

    if-lt v1, v2, :cond_3

    const/16 v2, 0x48

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(I)V

    goto/16 :goto_2

    :cond_3
    const/16 v2, -0x28

    if-lt v1, v2, :cond_4

    const/16 v2, -0x11

    if-le v1, v2, :cond_5

    :cond_4
    const/16 v2, -0x42

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(J)V

    goto/16 :goto_2

    :cond_6
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->a()V

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->f()Z

    move-result v1

    const-string v2, "#"

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v1

    iget-boolean v3, p0, Lcom/alibaba/fastjson2/a;->b:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/alibaba/fastjson2/a;->k:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "symbol not found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->i()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/fastjson2/a;->k:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/alibaba/fastjson2/a;->b:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->d()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->g()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->d()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->a()V

    goto/16 :goto_1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v1, "{\"$ref\":"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    const-string v1, "#-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/alibaba/fastjson2/a;->h:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v0, "}"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->j:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "symbol not found : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget p0, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, p0

    const/16 v0, -0x46

    if-lt p0, v0, :cond_0

    const/16 v0, 0x48

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, -0x53

    if-eq p0, v0, :cond_2

    const/16 v0, -0x54

    if-eq p0, v0, :cond_2

    const/16 v0, -0x55

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte p0, p0, v0

    const/16 v0, -0x6d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget p0, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, p0

    const/16 v0, 0x49

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7d

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    return v1

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, -0x44

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1

    :cond_2
    const/16 v3, -0x54

    if-eq v1, v3, :cond_4

    const/16 v3, -0x53

    if-eq v1, v3, :cond_4

    const/16 v3, 0x48

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readInt32Value not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offset "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    return v1
.end method

.method public j()J
    .locals 15

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/16 v3, 0x38

    const/16 v4, 0x30

    const/16 v5, 0x8

    if-lt v1, v4, :cond_1

    const/16 v6, 0x3f

    if-gt v1, v6, :cond_1

    sub-int/2addr v1, v3

    shl-int/2addr v1, v5

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-long v0, v1

    return-wide v0

    :cond_1
    const/16 v6, 0x40

    const/16 v7, 0x10

    if-lt v1, v6, :cond_2

    const/16 v6, 0x47

    if-gt v1, v6, :cond_2

    add-int/lit8 v1, v1, -0x44

    shl-int/2addr v1, v7

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-long v0, v1

    return-wide v0

    :cond_2
    const/16 v6, -0x28

    if-lt v1, v6, :cond_3

    const/16 v8, -0x11

    if-gt v1, v8, :cond_3

    sub-int/2addr v1, v6

    int-to-long v0, v1

    const-wide/16 v2, -0x8

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    const/16 v6, -0x38

    if-lt v1, v6, :cond_4

    const/16 v6, -0x29

    if-gt v1, v6, :cond_4

    add-int/lit8 v1, v1, 0x30

    shl-int/2addr v1, v5

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-long v0, v1

    return-wide v0

    :cond_4
    const/16 v6, -0x40

    if-lt v1, v6, :cond_5

    const/16 v6, -0x39

    if-gt v1, v6, :cond_5

    add-int/lit8 v1, v1, 0x3c

    shl-int/2addr v1, v7

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-long v0, v1

    return-wide v0

    :cond_5
    const/16 v6, -0x55

    const/16 v8, 0x18

    if-eq v1, v6, :cond_7

    const/16 v6, 0x48

    if-eq v1, v6, :cond_6

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readInt64Value not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offset "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v2

    int-to-long v0, p0

    return-wide v0

    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v2

    shl-int/2addr v0, v5

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    int-to-long v0, v1

    return-wide v0

    :cond_6
    :pswitch_2
    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    add-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/2addr v0, v8

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    int-to-long v0, v1

    return-wide v0

    :cond_7
    :pswitch_3
    add-int/lit8 v1, v2, 0x7

    aget-byte v1, v0, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    add-int/lit8 v1, v2, 0x6

    aget-byte v1, v0, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long/2addr v13, v5

    add-long/2addr v9, v13

    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v0, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long v6, v13, v7

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    shl-long/2addr v6, v8

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    shl-long/2addr v6, v4

    add-long/2addr v9, v6

    aget-byte v0, v0, v2

    int-to-long v0, v0

    shl-long/2addr v0, v3

    add-long/2addr v9, v0

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    return-wide v9

    :pswitch_data_0
    .packed-switch -0x44
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public k()I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    return v1

    :cond_0
    const/16 v3, 0x40

    if-lt v1, v3, :cond_1

    const/16 v3, 0x47

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x44

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v3

    :goto_0
    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1

    :cond_1
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0x48

    if-ne v1, v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v2, v1

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v2, p0

    return v2

    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support length type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v0, v0, v1

    const/16 v2, -0x6d

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reference not support input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/alibaba/fastjson2/a;->d:B

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v1, p0, Lcom/alibaba/fastjson2/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/a;->f:B

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/a;->g:I

    const/16 v1, 0x49

    if-lt v0, v1, :cond_2

    const/16 v2, 0x79

    if-gt v0, v2, :cond_2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/a;->e:I

    iget v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    iput v0, p0, Lcom/alibaba/fastjson2/a;->g:I

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/a;->e:I

    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_2
    const/16 v1, 0x7a

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/a;->e:I

    iget v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    iput v0, p0, Lcom/alibaba/fastjson2/a;->g:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_3
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/a;->e:I

    iget v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    iput v0, p0, Lcom/alibaba/fastjson2/a;->g:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_4
    const/16 v1, 0x7c

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/a;->e:I

    iget v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    iput v0, p0, Lcom/alibaba/fastjson2/a;->g:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_5
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/a;->k()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/a;->e:I

    iget v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    iput v0, p0, Lcom/alibaba/fastjson2/a;->g:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/a;->e:I

    if-gez v1, :cond_6

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->j:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/a;->a:[B

    iget v4, p0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-direct {v2, v3, v4, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    iget v1, p0, Lcom/alibaba/fastjson2/a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/a;->c:I

    return-object v2

    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readString not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/alibaba/fastjson2/a;->f:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->a:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/a;->i:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
