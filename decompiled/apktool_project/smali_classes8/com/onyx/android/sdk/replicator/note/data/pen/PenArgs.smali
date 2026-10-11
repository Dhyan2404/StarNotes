.class public final Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008.\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u0000 c2\u00020\u00012\u00020\u0002:\u0001cB;\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010R\u001a\u00020SJ\u0008\u0010T\u001a\u00020\u0000H\u0016J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000b\u0010U\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010V\u001a\u00020\u0006H\u00c6\u0003J\t\u0010W\u001a\u00020\u0008H\u00c6\u0003J\t\u0010X\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J?\u0010Z\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\u0013\u0010[\u001a\u00020$2\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u00d6\u0003J\t\u0010^\u001a\u00020\u0006H\u00d6\u0001J\t\u0010_\u001a\u00020\u0004H\u00d6\u0001J\u0016\u0010`\u001a\u00020S2\u0006\u0010a\u001a\u00020\u00062\u0006\u0010b\u001a\u00020\u0006R\u001a\u0010\r\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u000f\"\u0004\u0008/\u0010\u0011R\u001a\u00100\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u000f\"\u0004\u00082\u0010\u0011R\u001a\u00103\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010&\"\u0004\u00085\u0010(R\u001a\u00106\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u000f\"\u0004\u00088\u0010\u0011R\u001a\u00109\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0018\"\u0004\u0008;\u0010\u001aR\u001a\u0010<\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010*\"\u0004\u0008>\u0010,R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0018\"\u0004\u0008@\u0010\u001aR\u001a\u0010A\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u000f\"\u0004\u0008C\u0010\u0011R\u001a\u0010D\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u000f\"\u0004\u0008F\u0010\u0011R\u001a\u0010G\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u000f\"\u0004\u0008I\u0010\u0011R\u001a\u0010J\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u000f\"\u0004\u0008L\u0010\u0011R\u001a\u0010M\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u000f\"\u0004\u0008O\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010\u000f\"\u0004\u0008Q\u0010\u0011\u00a8\u0006d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Ljava/io/Serializable;",
        "",
        "id",
        "",
        "type",
        "",
        "width",
        "",
        "color",
        "attrs",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V",
        "alphaFactor",
        "getAlphaFactor",
        "()F",
        "setAlphaFactor",
        "(F)V",
        "getAttrs",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;",
        "setAttrs",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V",
        "brushShape",
        "getBrushShape",
        "()I",
        "setBrushShape",
        "(I)V",
        "getColor",
        "setColor",
        "colorList",
        "Lcom/onyx/android/sdk/base/extension/IntList;",
        "getColorList",
        "()Lcom/onyx/android/sdk/base/extension/IntList;",
        "setColorList",
        "(Lcom/onyx/android/sdk/base/extension/IntList;)V",
        "directionEnabled",
        "",
        "getDirectionEnabled",
        "()Z",
        "setDirectionEnabled",
        "(Z)V",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "nib",
        "getNib",
        "setNib",
        "pressureSensitivity",
        "getPressureSensitivity",
        "setPressureSensitivity",
        "roundCorner",
        "getRoundCorner",
        "setRoundCorner",
        "smoothLevel",
        "getSmoothLevel",
        "setSmoothLevel",
        "subShapeType",
        "getSubShapeType",
        "setSubShapeType",
        "tapeFillStyle",
        "getTapeFillStyle",
        "setTapeFillStyle",
        "getType",
        "setType",
        "velocityAmplifier",
        "getVelocityAmplifier",
        "setVelocityAmplifier",
        "velocityIgnoreThreshold",
        "getVelocityIgnoreThreshold",
        "setVelocityIgnoreThreshold",
        "velocityLowerBound",
        "getVelocityLowerBound",
        "setVelocityLowerBound",
        "velocitySensitivity",
        "getVelocitySensitivity",
        "setVelocitySensitivity",
        "velocityUpperBound",
        "getVelocityUpperBound",
        "setVelocityUpperBound",
        "getWidth",
        "setWidth",
        "clearPressureAndVelocityAttr",
        "",
        "clone",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "updateColorList",
        "newColor",
        "updateIndex",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ONYX_NOTE_EDIT_HISTORY_COLOR_LIST_MAX_SIZE:I = 0x5


# instance fields
.field private alphaFactor:F

.field private attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private brushShape:I

.field private color:I

.field private colorList:Lcom/onyx/android/sdk/base/extension/IntList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private directionEnabled:Z

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nib:F

.field private pressureSensitivity:F

.field private roundCorner:Z

.field private smoothLevel:F

.field private subShapeType:I

.field private tapeFillStyle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I

.field private velocityAmplifier:F

.field private velocityIgnoreThreshold:F

.field private velocityLowerBound:F

.field private velocitySensitivity:F

.field private velocityUpperBound:F

.field private width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->Companion:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;-><init>(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    .line 7
    iput-object p5, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    const/high16 p1, 0x3ec00000    # 0.375f

    .line 8
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->pressureSensitivity:F

    .line 9
    sget-object p1, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getDEFAULT_VELOCITY_SENSITIVITY()F

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocitySensitivity:F

    .line 10
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getDEFAULT_VELOCITY_AMPLIFIER()F

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityAmplifier:F

    .line 11
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getDEFAULT_VELOCITY_IGNORE_THRESHOLD()F

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityIgnoreThreshold:F

    .line 12
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getDEFAULT_VELOCITY_LOWER_BOUND()F

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityLowerBound:F

    .line 13
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getDEFAULT_VELOCITY_UPPER_BOUND()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityUpperBound:F

    const p1, 0x3e4ccccd    # 0.2f

    .line 14
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->smoothLevel:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->alphaFactor:F

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->roundCorner:Z

    const/4 p2, -0x1

    .line 17
    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->subShapeType:I

    const-string p2, ""

    .line 18
    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->tapeFillStyle:Ljava/lang/String;

    .line 19
    new-instance p2, Lcom/onyx/android/sdk/base/extension/IntList;

    invoke-direct {p2}, Lcom/onyx/android/sdk/base/extension/IntList;-><init>()V

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    .line 20
    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->directionEnabled:Z

    .line 21
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->brushShape:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    const/high16 p4, -0x1000000

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    .line 22
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;-><init>(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->copy(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearPressureAndVelocityAttr()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->pressureSensitivity:F

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocitySensitivity:F

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityAmplifier:F

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityIgnoreThreshold:F

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityLowerBound:F

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityUpperBound:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->directionEnabled:Z

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->brushShape:I

    return-void
.end method

.method public clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
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

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.pen.PenArgs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-object p0
.end method

.method public final clone(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    return-object p0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    return p0
.end method

.method public final component5()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;-><init>(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V

    return-object p0
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
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAlphaFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->alphaFactor:F

    return p0
.end method

.method public final getAttrs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-object p0
.end method

.method public final getBrushShape()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->brushShape:I

    return p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    return p0
.end method

.method public final getColorList()Lcom/onyx/android/sdk/base/extension/IntList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    return-object p0
.end method

.method public final getDirectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->directionEnabled:Z

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getNib()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->nib:F

    return p0
.end method

.method public final getPressureSensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->pressureSensitivity:F

    return p0
.end method

.method public final getRoundCorner()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->roundCorner:Z

    return p0
.end method

.method public final getSmoothLevel()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->smoothLevel:F

    return p0
.end method

.method public final getSubShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->subShapeType:I

    return p0
.end method

.method public final getTapeFillStyle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->tapeFillStyle:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    return p0
.end method

.method public final getVelocityAmplifier()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityAmplifier:F

    return p0
.end method

.method public final getVelocityIgnoreThreshold()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityIgnoreThreshold:F

    return p0
.end method

.method public final getVelocityLowerBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityLowerBound:F

    return p0
.end method

.method public final getVelocitySensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocitySensitivity:F

    return p0
.end method

.method public final getVelocityUpperBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityUpperBound:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAlphaFactor(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->alphaFactor:F

    return-void
.end method

.method public final setAttrs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    return-void
.end method

.method public final setBrushShape(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->brushShape:I

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    return-void
.end method

.method public final setColorList(Lcom/onyx/android/sdk/base/extension/IntList;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/extension/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    return-void
.end method

.method public final setDirectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->directionEnabled:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    return-void
.end method

.method public final setNib(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->nib:F

    return-void
.end method

.method public final setPressureSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->pressureSensitivity:F

    return-void
.end method

.method public final setRoundCorner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->roundCorner:Z

    return-void
.end method

.method public final setSmoothLevel(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->smoothLevel:F

    return-void
.end method

.method public final setSubShapeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->subShapeType:I

    return-void
.end method

.method public final setTapeFillStyle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->tapeFillStyle:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    return-void
.end method

.method public final setVelocityAmplifier(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityAmplifier:F

    return-void
.end method

.method public final setVelocityIgnoreThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityIgnoreThreshold:F

    return-void
.end method

.method public final setVelocityLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityLowerBound:F

    return-void
.end method

.method public final setVelocitySensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocitySensitivity:F

    return-void
.end method

.method public final setVelocityUpperBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->velocityUpperBound:F

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenArgs(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->attrs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateColorList(II)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    invoke-static {v0, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isOutOfRange(Ljava/util/Collection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x5

    if-le p2, v1, :cond_1

    const/4 p2, 0x0

    invoke-static {v0, p2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->color:I

    return-void
.end method
