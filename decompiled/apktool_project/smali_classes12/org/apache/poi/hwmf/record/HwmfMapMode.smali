.class public final enum Lorg/apache/poi/hwmf/record/HwmfMapMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfMapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_ANISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_HIENGLISH:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_HIMETRIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_ISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_LOENGLISH:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_LOMETRIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_TEXT:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field public static final enum MM_TWIPS:Lorg/apache/poi/hwmf/record/HwmfMapMode;


# instance fields
.field public final flag:I

.field public final scale:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const-string v1, "MM_TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_TEXT:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const/16 v2, 0xfe

    const-string v4, "MM_LOMETRIC"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5, v2}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_LOMETRIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const/16 v3, 0x9ec

    const-string v4, "MM_HIMETRIC"

    const/4 v6, 0x3

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_HIMETRIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const/16 v4, 0x64

    const-string v5, "MM_LOENGLISH"

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_LOENGLISH:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const/16 v5, 0x3e8

    const-string v6, "MM_HIENGLISH"

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8, v5}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_HIENGLISH:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const/16 v6, 0x5a0

    const-string v7, "MM_TWIPS"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_TWIPS:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const-string v7, "MM_ISOTROPIC"

    const/4 v8, 0x7

    const/4 v10, -0x1

    invoke-direct {v6, v7, v9, v8, v10}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_ISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    new-instance v7, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const-string v9, "MM_ANISOTROPIC"

    const/16 v11, 0x8

    invoke-direct {v7, v9, v8, v11, v10}, Lorg/apache/poi/hwmf/record/HwmfMapMode;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_ANISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/hwmf/record/HwmfMapMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfMapMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfMapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfMapMode;->flag:I

    iput p4, p0, Lorg/apache/poi/hwmf/record/HwmfMapMode;->scale:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfMapMode;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfMapMode;->values()[Lorg/apache/poi/hwmf/record/HwmfMapMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfMapMode;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_ISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfMapMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfMapMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfMapMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfMapMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfMapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfMapMode;

    return-object v0
.end method
