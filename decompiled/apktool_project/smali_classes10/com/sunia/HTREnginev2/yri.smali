.class public final Lcom/sunia/HTREnginev2/yri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sunia/HTREnginev2/yri;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x17t
        -0x5bt
        0x5t
        -0x48t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/awt/color/ICC_Profile;I)Z
    .locals 4

    invoke-virtual {p0, p1}, Ljava/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    sget-object v3, Lcom/sunia/HTREnginev2/yri;->a:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/16 v3, 0x5a

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x20

    aput-byte v3, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/awt/color/ICC_Profile;->setData(I[B)V

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/awt/color/ICC_Profile;[B)V
    .locals 0

    const-string p0, "profile"

    invoke-static {p1, p0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const p0, 0x68656164

    invoke-virtual {p1, p0, p2}, Ljava/awt/color/ICC_Profile;->setData(I[B)V

    :cond_0
    const p0, 0x77747074

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/yri;->b(Ljava/awt/color/ICC_Profile;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7258595a

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/yri;->b(Ljava/awt/color/ICC_Profile;I)Z

    const p0, 0x6758595a

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/yri;->b(Ljava/awt/color/ICC_Profile;I)Z

    const p0, 0x6258595a

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/yri;->b(Ljava/awt/color/ICC_Profile;I)Z

    :cond_1
    return-void
.end method
