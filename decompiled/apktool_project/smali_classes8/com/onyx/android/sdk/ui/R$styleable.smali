.class public final Lcom/onyx/android/sdk/ui/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static EllipsizingTextView:[I = null

.field public static EllipsizingTextView_android_maxLines:I = 0x1

.field public static EllipsizingTextView_android_textColor:I = 0x0

.field public static EllipsizingTextView_drawableTint:I = 0x2

.field public static RoundImageView:[I = null

.field public static RoundImageView_android_bottomLeftRadius:I = 0x2

.field public static RoundImageView_android_bottomRightRadius:I = 0x3

.field public static RoundImageView_android_topLeftRadius:I = 0x0

.field public static RoundImageView_android_topRightRadius:I = 0x1

.field public static RoundImageView_borderColor:I = 0x4

.field public static RoundImageView_borderWidth:I = 0x5

.field public static RoundImageView_cornerRadius:I = 0x6

.field public static RoundImageView_showAlphaBg:I = 0x7

.field public static TreeIconView:[I = null

.field public static TreeIconView_fillSrc:I = 0x0

.field public static TreeIconView_strokeSrc:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x1010153

    const v1, 0x7f040227

    const v2, 0x1010098

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/ui/R$styleable;->EllipsizingTextView:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onyx/android/sdk/ui/R$styleable;->RoundImageView:[I

    const v0, 0x7f04028b

    const v1, 0x7f0405c6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/ui/R$styleable;->TreeIconView:[I

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
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
