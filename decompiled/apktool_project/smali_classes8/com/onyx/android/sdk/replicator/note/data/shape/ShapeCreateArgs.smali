.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008<\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010?\u001a\u00020\u0000H\u0016J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\t\u0010C\u001a\u00020\u0003H\u00c6\u0003J\t\u0010D\u001a\u00020\u0003H\u00c6\u0003J\t\u0010E\u001a\u00020\u0013H\u00c6\u0003J\t\u0010F\u001a\u00020\u0015H\u00c6\u0003J\t\u0010G\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010J\u001a\u00020\u0003H\u00c6\u0003J\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0003H\u00c6\u0003J\t\u0010M\u001a\u00020\u0003H\u00c6\u0003J\t\u0010N\u001a\u00020\u0003H\u00c6\u0003J\u00a3\u0001\u0010O\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u00c6\u0001J\u0013\u0010P\u001a\u00020\u00132\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0096\u0002J\u0010\u0010S\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\u0003H\u0007J\u0008\u0010U\u001a\u00020\u0003H\u0007J\t\u0010V\u001a\u00020\u0015H\u00d6\u0001J\t\u0010W\u001a\u00020XH\u00d6\u0001R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010\u001aR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0018\"\u0004\u0008&\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0018\"\u0004\u0008(\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0018\"\u0004\u0008.\u0010\u001aR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0018\"\u0004\u00080\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0018\"\u0004\u00086\u0010\u001aR\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0018\"\u0004\u00088\u0010\u001aR\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u0018\"\u0004\u0008:\u0010\u001aR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0018\"\u0004\u0008<\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0018\"\u0004\u0008>\u0010\u001a\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "",
        "displayScale",
        "",
        "maxPressure",
        "tiltConfig",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;",
        "penAttrs",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "pressureSensitivity",
        "velocitySensitivity",
        "velocityAmplifier",
        "velocityIgnoreThreshold",
        "velocityLowerBound",
        "velocityUpperBound",
        "alphaFactor",
        "dpi",
        "smoothLevel",
        "directionEnabled",
        "",
        "brushShape",
        "",
        "(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZI)V",
        "getAlphaFactor",
        "()F",
        "setAlphaFactor",
        "(F)V",
        "getBrushShape",
        "()I",
        "setBrushShape",
        "(I)V",
        "getDirectionEnabled",
        "()Z",
        "setDirectionEnabled",
        "(Z)V",
        "getDisplayScale",
        "setDisplayScale",
        "getDpi",
        "setDpi",
        "getMaxPressure",
        "setMaxPressure",
        "getPenAttrs",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "setPenAttrs",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V",
        "getPressureSensitivity",
        "setPressureSensitivity",
        "getSmoothLevel",
        "setSmoothLevel",
        "getTiltConfig",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;",
        "setTiltConfig",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;)V",
        "getVelocityAmplifier",
        "setVelocityAmplifier",
        "getVelocityIgnoreThreshold",
        "setVelocityIgnoreThreshold",
        "getVelocityLowerBound",
        "setVelocityLowerBound",
        "getVelocitySensitivity",
        "setVelocitySensitivity",
        "getVelocityUpperBound",
        "setVelocityUpperBound",
        "clone",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "getCreateScaleValue",
        "value",
        "getRevisedDisplayScale",
        "hashCode",
        "toString",
        "",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private alphaFactor:F

.field private brushShape:I

.field private directionEnabled:Z

.field private displayScale:F

.field private dpi:F

.field private maxPressure:F

.field private penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pressureSensitivity:F

.field private smoothLevel:F

.field private tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private velocityAmplifier:F

.field private velocityIgnoreThreshold:F

.field private velocityLowerBound:F

.field private velocitySensitivity:F

.field private velocityUpperBound:F


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZI)V
    .locals 0
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    .line 7
    iput p5, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    .line 8
    iput p6, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    .line 9
    iput p7, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityAmplifier:F

    .line 10
    iput p8, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityIgnoreThreshold:F

    .line 11
    iput p9, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityLowerBound:F

    .line 12
    iput p10, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityUpperBound:F

    .line 13
    iput p11, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    .line 14
    iput p12, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    .line 15
    iput p13, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    .line 16
    iput-boolean p14, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    .line 17
    iput p15, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    return-void
.end method

.method public synthetic constructor <init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 18
    sget-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v2, "FLOAT_ONE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 19
    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getMAX_TOUCH_PRESSURE()F

    move-result v2

    goto :goto_1

    :cond_1
    move/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    const/high16 v5, 0x3ec00000    # 0.375f

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 20
    sget-object v6, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getDEFAULT_VELOCITY_SENSITIVITY()F

    move-result v6

    goto :goto_5

    :cond_5
    move/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    move v7, v8

    goto :goto_6

    :cond_6
    move/from16 v7, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v8

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move v10, v8

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v8, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_a
    move/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    const/high16 v12, 0x43a00000    # 320.0f

    goto :goto_b

    :cond_b
    move/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    const v13, 0x3e4ccccd    # 0.2f

    goto :goto_c

    :cond_c
    move/from16 v13, p13

    :goto_c
    and-int/lit16 v14, v0, 0x2000

    const/4 v15, 0x1

    if-eqz v14, :cond_d

    move v14, v15

    goto :goto_d

    :cond_d
    move/from16 v14, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    move/from16 p1, v1

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v8

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    .line 21
    invoke-direct/range {p0 .. p15}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityAmplifier:F

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityIgnoreThreshold:F

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityLowerBound:F

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityUpperBound:F

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    goto :goto_e

    :cond_e
    move/from16 v1, p15

    :goto_e
    move/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->copy(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZI)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    return-object p0
.end method

.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    return p0
.end method

.method public final component10()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityUpperBound:F

    return p0
.end method

.method public final component11()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    return p0
.end method

.method public final component12()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    return p0
.end method

.method public final component13()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    return p0
.end method

.method public final component14()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    return p0
.end method

.method public final component15()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    return p0
.end method

.method public final component3()Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    return-object p0
.end method

.method public final component4()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-object p0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    return p0
.end method

.method public final component6()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    return p0
.end method

.method public final component7()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityAmplifier:F

    return p0
.end method

.method public final component8()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityIgnoreThreshold:F

    return p0
.end method

.method public final component9()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityLowerBound:F

    return p0
.end method

.method public final copy(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZI)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .locals 17
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v16, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-object/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZI)V

    return-object v16
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_a

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_a

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_a

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_a

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_a

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    if-ne v1, v3, :cond_a

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    if-ne p0, p1, :cond_a

    goto :goto_8

    :cond_a
    move v0, v2

    :goto_8
    return v0
.end method

.method public final getAlphaFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    return p0
.end method

.method public final getBrushShape()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    return p0
.end method

.method public final getCreateScaleValue(F)F
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    div-float/2addr p1, p0

    :goto_1
    return p1
.end method

.method public final getDirectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    return p0
.end method

.method public final getDisplayScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    return p0
.end method

.method public final getDpi()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    return p0
.end method

.method public final getMaxPressure()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    return p0
.end method

.method public final getPenAttrs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-object p0
.end method

.method public final getPressureSensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    return p0
.end method

.method public final getRevisedDisplayScale()F
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    return p0
.end method

.method public final getSmoothLevel()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    return p0
.end method

.method public final getTiltConfig()Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    return-object p0
.end method

.method public final getVelocityAmplifier()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityAmplifier:F

    return p0
.end method

.method public final getVelocityIgnoreThreshold()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityIgnoreThreshold:F

    return p0
.end method

.method public final getVelocityLowerBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityLowerBound:F

    return p0
.end method

.method public final getVelocitySensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    return p0
.end method

.method public final getVelocityUpperBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityUpperBound:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityAmplifier:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityIgnoreThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityLowerBound:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityUpperBound:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAlphaFactor(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    return-void
.end method

.method public final setBrushShape(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    return-void
.end method

.method public final setDirectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    return-void
.end method

.method public final setDisplayScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    return-void
.end method

.method public final setDpi(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    return-void
.end method

.method public final setMaxPressure(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    return-void
.end method

.method public final setPenAttrs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-void
.end method

.method public final setPressureSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    return-void
.end method

.method public final setSmoothLevel(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    return-void
.end method

.method public final setTiltConfig(Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    return-void
.end method

.method public final setVelocityAmplifier(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityAmplifier:F

    return-void
.end method

.method public final setVelocityIgnoreThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityIgnoreThreshold:F

    return-void
.end method

.method public final setVelocityLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityLowerBound:F

    return-void
.end method

.method public final setVelocitySensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    return-void
.end method

.method public final setVelocityUpperBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityUpperBound:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeCreateArgs(displayScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->displayScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->maxPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tiltConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->tiltConfig:Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", penAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->penAttrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pressureSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->pressureSensitivity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocitySensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocitySensitivity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityAmplifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityAmplifier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityIgnoreThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityIgnoreThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityLowerBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityLowerBound:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityUpperBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->velocityUpperBound:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alphaFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->alphaFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->dpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", smoothLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->smoothLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", directionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->directionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", brushShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->brushShape:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
