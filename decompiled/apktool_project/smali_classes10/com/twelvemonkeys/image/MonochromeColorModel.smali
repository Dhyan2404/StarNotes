.class public Lcom/twelvemonkeys/image/MonochromeColorModel;
.super Ljava/awt/image/IndexColorModel;
.source "SourceFile"


# static fields
.field public static final e:[I

.field public static f:Lcom/twelvemonkeys/image/MonochromeColorModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xffffff

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/image/MonochromeColorModel;->e:[I

    new-instance v0, Lcom/twelvemonkeys/image/MonochromeColorModel;

    invoke-direct {v0}, Lcom/twelvemonkeys/image/MonochromeColorModel;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/image/MonochromeColorModel;->f:Lcom/twelvemonkeys/image/MonochromeColorModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v3, Lcom/twelvemonkeys/image/MonochromeColorModel;->e:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    return-void
.end method

.method public static getInstance()Ljava/awt/image/IndexColorModel;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/image/MonochromeColorModel;->f:Lcom/twelvemonkeys/image/MonochromeColorModel;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getDataElements(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    mul-int/lit16 v0, v0, 0xde

    mul-int/lit16 v1, v1, 0x2c3

    add-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0x47

    add-int/2addr v0, p1

    :try_start_0
    div-int/lit16 v0, v0, 0x3e8

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    check-cast p2, [B

    goto :goto_0

    :cond_0
    new-array p2, p1, [B

    :goto_0
    const/16 v1, 0x80

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    aput-byte v2, p2, v2

    goto :goto_1

    :cond_1
    aput-byte p1, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
