.class public final enum Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EyesComforterSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001BA\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "",
        "type",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
        "titleResId",
        "",
        "indicatorColor",
        "comforterColor",
        "colorMatrixStrategy",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;",
        "intensity",
        "",
        "(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;F)V",
        "getColorMatrixStrategy",
        "()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;",
        "getComforterColor",
        "()I",
        "getIndicatorColor",
        "getIntensity",
        "()F",
        "setIntensity",
        "(F)V",
        "getTitleResId",
        "getType",
        "()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
        "RECOMMEND",
        "READING",
        "OUTDOOR",
        "DARK",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

.field public static final enum DARK:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

.field public static final enum OUTDOOR:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

.field public static final enum READING:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

.field public static final enum RECOMMEND:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;


# instance fields
.field private final colorMatrixStrategy:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final comforterColor:I

.field private final indicatorColor:I

.field private intensity:F

.field private final titleResId:I

.field private final type:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->RECOMMEND:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    sget-object v1, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->READING:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    sget-object v2, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->OUTDOOR:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    sget-object v3, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->DARK:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 24

    new-instance v11, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    const-string v1, "RECOMMEND"

    const/4 v2, 0x0

    sget-object v3, Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;->RECOMMEND:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    sget v4, Lcom/onyx/galaxy/note/R$string;->eyes_comfort_recommend:I

    const/16 v0, 0xf4

    const/16 v5, 0xe7

    const/16 v6, 0xff

    invoke-static {v6, v0, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v0, 0xd0

    const/16 v6, 0x84

    const/16 v12, 0x3c

    const/16 v7, 0xeb

    invoke-static {v12, v7, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;-><init>(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v11, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->RECOMMEND:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    const-string v14, "READING"

    const/4 v15, 0x1

    sget-object v16, Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;->READING:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    sget v17, Lcom/onyx/galaxy/note/R$string;->eyes_comfort_reading:I

    const/16 v1, 0xfb

    const/16 v2, 0xf8

    const/16 v3, 0xe9

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    const/16 v1, 0xe2

    const/16 v2, 0x5d

    invoke-static {v12, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x30

    const/16 v23, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v23}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;-><init>(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->READING:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    const-string v2, "OUTDOOR"

    const/4 v3, 0x2

    sget-object v4, Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;->OUTDOOR:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    sget v5, Lcom/onyx/galaxy/note/R$string;->eyes_comfort_outdoor:I

    const/16 v1, 0xea

    const/16 v6, 0xf1

    invoke-static {v1, v6, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const/16 v1, 0xc8

    const/16 v7, 0x26

    const/16 v8, 0x81

    invoke-static {v12, v8, v1, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    new-instance v8, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;

    const v1, 0x3e99999a    # 0.3f

    const v9, 0x3e19999a    # 0.15f

    invoke-direct {v8, v1, v9}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;-><init>(FF)V

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;-><init>(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->OUTDOOR:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    const-string v14, "DARK"

    const/4 v15, 0x3

    sget-object v16, Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;->DARK:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    sget v17, Lcom/onyx/galaxy/note/R$string;->eyes_comfort_dark:I

    const/16 v1, 0xaa

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    const/16 v1, 0x59

    invoke-static {v12, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v19

    move-object v13, v0

    invoke-direct/range {v13 .. v23}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;-><init>(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->DARK:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-static {}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->$values()[Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->$VALUES:[Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;F)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;",
            "III",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;",
            "F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->type:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    .line 3
    iput p4, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->titleResId:I

    .line 4
    iput p5, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->indicatorColor:I

    .line 5
    iput p6, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->comforterColor:I

    .line 6
    iput-object p7, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->colorMatrixStrategy:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;

    .line 7
    iput p8, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->intensity:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p7

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    const/high16 v0, 0x42480000    # 50.0f

    move v12, v0

    goto :goto_1

    :cond_1
    move/from16 v12, p8

    :goto_1
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 9
    invoke-direct/range {v4 .. v12}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;-><init>(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;F)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->$VALUES:[Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-object v0
.end method


# virtual methods
.method public final getColorMatrixStrategy()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->colorMatrixStrategy:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;

    return-object p0
.end method

.method public final getComforterColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->comforterColor:I

    return p0
.end method

.method public final getIndicatorColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->indicatorColor:I

    return p0
.end method

.method public final getIntensity()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->intensity:F

    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->titleResId:I

    return p0
.end method

.method public final getType()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->type:Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    return-object p0
.end method

.method public final setIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->intensity:F

    return-void
.end method
