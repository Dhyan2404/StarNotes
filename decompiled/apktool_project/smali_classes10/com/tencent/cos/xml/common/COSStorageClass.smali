.class public final enum Lcom/tencent/cos/xml/common/COSStorageClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/common/COSStorageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum ARCHIVE:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum COLD:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum DEEP_ARCHIVE:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum INTELLIGENT_TIERING:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum MAZ_COLD:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum MAZ_INTELLIGENT_TIERING:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum MAZ_STANDARD:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum MAZ_STANDARD_IA:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum STANDARD:Lcom/tencent/cos/xml/common/COSStorageClass;

.field public static final enum STANDARD_IA:Lcom/tencent/cos/xml/common/COSStorageClass;


# instance fields
.field private cosStorageClass:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/common/COSStorageClass;->STANDARD:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v1, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v2, "STANDARD_IA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/common/COSStorageClass;->STANDARD_IA:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v2, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v3, "COLD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/cos/xml/common/COSStorageClass;->COLD:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v3, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v4, "ARCHIVE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/xml/common/COSStorageClass;->ARCHIVE:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v4, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v5, "DEEP_ARCHIVE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tencent/cos/xml/common/COSStorageClass;->DEEP_ARCHIVE:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v5, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v6, "INTELLIGENT_TIERING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tencent/cos/xml/common/COSStorageClass;->INTELLIGENT_TIERING:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v6, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v7, "MAZ_STANDARD"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v7}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tencent/cos/xml/common/COSStorageClass;->MAZ_STANDARD:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v7, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v8, "MAZ_STANDARD_IA"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v8}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tencent/cos/xml/common/COSStorageClass;->MAZ_STANDARD_IA:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v8, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v9, "MAZ_COLD"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v9}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tencent/cos/xml/common/COSStorageClass;->MAZ_COLD:Lcom/tencent/cos/xml/common/COSStorageClass;

    new-instance v9, Lcom/tencent/cos/xml/common/COSStorageClass;

    const-string v10, "MAZ_INTELLIGENT_TIERING"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v10}, Lcom/tencent/cos/xml/common/COSStorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/tencent/cos/xml/common/COSStorageClass;->MAZ_INTELLIGENT_TIERING:Lcom/tencent/cos/xml/common/COSStorageClass;

    filled-new-array/range {v0 .. v9}, [Lcom/tencent/cos/xml/common/COSStorageClass;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/common/COSStorageClass;->$VALUES:[Lcom/tencent/cos/xml/common/COSStorageClass;

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

    iput-object p3, p0, Lcom/tencent/cos/xml/common/COSStorageClass;->cosStorageClass:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tencent/cos/xml/common/COSStorageClass;
    .locals 5

    invoke-static {}, Lcom/tencent/cos/xml/common/COSStorageClass;->values()[Lcom/tencent/cos/xml/common/COSStorageClass;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/tencent/cos/xml/common/COSStorageClass;->cosStorageClass:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/common/COSStorageClass;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/common/COSStorageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/common/COSStorageClass;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/common/COSStorageClass;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/common/COSStorageClass;->$VALUES:[Lcom/tencent/cos/xml/common/COSStorageClass;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/common/COSStorageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/common/COSStorageClass;

    return-object v0
.end method


# virtual methods
.method public getStorageClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/common/COSStorageClass;->cosStorageClass:Ljava/lang/String;

    return-object p0
.end method
