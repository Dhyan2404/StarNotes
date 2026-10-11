.class public final enum Lcom/github/mikephil/charting/animation/Easing$EasingOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/animation/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EasingOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/animation/Easing$EasingOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInBack:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInBounce:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInCirc:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInCubic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInElastic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInExpo:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutBack:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutBounce:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutCirc:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutCubic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutElastic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutExpo:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutQuart:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInOutSine:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInQuart:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseInSine:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutBack:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutBounce:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutCirc:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutCubic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutElastic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutExpo:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutQuart:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum EaseOutSine:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

.field public static final enum Linear:Lcom/github/mikephil/charting/animation/Easing$EasingOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    new-instance v1, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v0, v1

    const-string v2, "Linear"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->Linear:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v2, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v1, v2

    const-string v3, "EaseInQuad"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v3, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v2, v3

    const-string v4, "EaseOutQuad"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v4, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v3, v4

    const-string v5, "EaseInOutQuad"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v5, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v4, v5

    const-string v6, "EaseInCubic"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInCubic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v6, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v5, v6

    const-string v7, "EaseOutCubic"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutCubic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v7, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v6, v7

    const-string v8, "EaseInOutCubic"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutCubic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v8, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v7, v8

    const-string v9, "EaseInQuart"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInQuart:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v9, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v8, v9

    const-string v10, "EaseOutQuart"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutQuart:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v10, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v9, v10

    const-string v11, "EaseInOutQuart"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutQuart:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v11, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v10, v11

    const-string v12, "EaseInSine"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInSine:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v12, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v11, v12

    const-string v13, "EaseOutSine"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutSine:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v13, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v12, v13

    const-string v14, "EaseInOutSine"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutSine:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v14, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v13, v14

    const-string v15, "EaseInExpo"

    move-object/from16 v28, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInExpo:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v14, v0

    const-string v15, "EaseOutExpo"

    move-object/from16 v29, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutExpo:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object v15, v0

    const-string v1, "EaseInOutExpo"

    move-object/from16 v30, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutExpo:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v16, v0

    const-string v1, "EaseInCirc"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInCirc:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v17, v0

    const-string v1, "EaseOutCirc"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutCirc:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v18, v0

    const-string v1, "EaseInOutCirc"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutCirc:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v19, v0

    const-string v1, "EaseInElastic"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInElastic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v20, v0

    const-string v1, "EaseOutElastic"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutElastic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v21, v0

    const-string v1, "EaseInOutElastic"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutElastic:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v22, v0

    const-string v1, "EaseInBack"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInBack:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v23, v0

    const-string v1, "EaseOutBack"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutBack:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v24, v0

    const-string v1, "EaseInOutBack"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutBack:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v25, v0

    const-string v1, "EaseInBounce"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInBounce:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v26, v0

    const-string v1, "EaseOutBounce"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseOutBounce:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    new-instance v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v27, v0

    const-string v1, "EaseInOutBounce"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/animation/Easing$EasingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutBounce:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    filled-new-array/range {v0 .. v27}, [Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->$VALUES:[Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    .locals 1

    const-class v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->$VALUES:[Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/animation/Easing$EasingOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    return-object v0
.end method
