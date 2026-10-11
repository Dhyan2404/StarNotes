.class public final Lcom/onyx/android/sdk/uicommon/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/uicommon/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static RoundImageView:[I = null

.field public static RoundImageView_android_bottomLeftRadius:I = 0x2

.field public static RoundImageView_android_bottomRightRadius:I = 0x3

.field public static RoundImageView_android_topLeftRadius:I = 0x0

.field public static RoundImageView_android_topRightRadius:I = 0x1

.field public static RoundImageView_borderColor:I = 0x4

.field public static RoundImageView_borderWidth:I = 0x5

.field public static RoundImageView_cornerRadius:I = 0x6

.field public static RoundImageView_showAlphaBg:I = 0x7

.field public static WheelView:[I = null

.field public static WheelView_wheelview_dividerColor:I = 0x0

.field public static WheelView_wheelview_dividerWidth:I = 0x1

.field public static WheelView_wheelview_gravity:I = 0x2

.field public static WheelView_wheelview_lineSpacingMultiplier:I = 0x3

.field public static WheelView_wheelview_textColorCenter:I = 0x4

.field public static WheelView_wheelview_textColorOut:I = 0x5

.field public static WheelView_wheelview_textScaleContentFactor:I = 0x6

.field public static WheelView_wheelview_textSize:I = 0x7

.field public static WheelView_wheelview_textSizeOut:I = 0x8

.field public static WheelView_wheelview_textSkewX:I = 0x9


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->RoundImageView:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/onyx/android/sdk/uicommon/R$styleable;->WheelView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10101a9
        0x10101aa
        0x10101ab
        0x10101ac
        0x7f04009b
        0x7f04009f
        0x7f0401a0
        0x7f040536
    .end array-data

    :array_1
    .array-data 4
        0x7f0406cf
        0x7f0406d0
        0x7f0406d1
        0x7f0406d2
        0x7f0406d3
        0x7f0406d4
        0x7f0406d5
        0x7f0406d6
        0x7f0406d7
        0x7f0406d8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
