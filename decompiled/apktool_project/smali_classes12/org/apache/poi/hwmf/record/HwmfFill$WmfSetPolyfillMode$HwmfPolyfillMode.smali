.class public final enum Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HwmfPolyfillMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

.field public static final enum ALTERNATE:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

.field public static final enum WINDING:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;


# instance fields
.field public final awtFlag:I

.field public final wmfFlag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    const-string v1, "ALTERNATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->ALTERNATE:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    const-string v2, "WINDING"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->WINDING:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    filled-new-array {v0, v1}, [Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

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

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->wmfFlag:I

    iput p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->awtFlag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->values()[Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->wmfFlag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    return-object v0
.end method
