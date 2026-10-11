.class public final Lcom/onegravity/rteditor/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static Theme:[I = null

.field public static Theme_rte_ToolbarButton:I = 0x0

.field public static Theme_rte_ToolbarSpinner:I = 0x1

.field public static Theme_rte_ToolbarSpinnerItem:I = 0x2

.field public static Theme_rte_ToolbarSpinnerSelectedColor:I = 0x3

.field public static Theme_rte_ToolbarVerticalDivider:I = 0x4

.field public static Theme_rte_darkTheme:I = 0x5

.field public static Theme_rte_icMenuCloseClearCancel:I = 0x6

.field public static Theme_rte_icMenuRotateLeft:I = 0x7

.field public static Theme_rte_icMenuRotateRight:I = 0x8

.field public static Theme_rte_icMenuSave:I = 0x9

.field public static Theme_rte_icToolbarAlignCenter:I = 0xa

.field public static Theme_rte_icToolbarAlignLeft:I = 0xb

.field public static Theme_rte_icToolbarAlignRight:I = 0xc

.field public static Theme_rte_icToolbarBGColor:I = 0xd

.field public static Theme_rte_icToolbarBold:I = 0xe

.field public static Theme_rte_icToolbarBullet:I = 0xf

.field public static Theme_rte_icToolbarCapture:I = 0x10

.field public static Theme_rte_icToolbarClear:I = 0x11

.field public static Theme_rte_icToolbarDecIntent:I = 0x12

.field public static Theme_rte_icToolbarFont:I = 0x13

.field public static Theme_rte_icToolbarFontColor:I = 0x14

.field public static Theme_rte_icToolbarFontSize:I = 0x15

.field public static Theme_rte_icToolbarImage:I = 0x16

.field public static Theme_rte_icToolbarIncIndent:I = 0x17

.field public static Theme_rte_icToolbarItalic:I = 0x18

.field public static Theme_rte_icToolbarLink:I = 0x19

.field public static Theme_rte_icToolbarNumber:I = 0x1a

.field public static Theme_rte_icToolbarRedo:I = 0x1b

.field public static Theme_rte_icToolbarStrikethrough:I = 0x1c

.field public static Theme_rte_icToolbarSubscript:I = 0x1d

.field public static Theme_rte_icToolbarSuperscript:I = 0x1e

.field public static Theme_rte_icToolbarUnderline:I = 0x1f

.field public static Theme_rte_icToolbarUndo:I = 0x20

.field public static ToolbarButton:[I = null

.field public static ToolbarButton_checked:I = 0x0

.field public static ToolbarButton_state_checked:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onegravity/rteditor/R$styleable;->Theme:[I

    const v0, 0x7f0400ee

    const v1, 0x7f0405b9

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/R$styleable;->ToolbarButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f0404dc
        0x7f0404dd
        0x7f0404de
        0x7f0404df
        0x7f0404e0
        0x7f0404e1
        0x7f0404e2
        0x7f0404e3
        0x7f0404e4
        0x7f0404e5
        0x7f0404e6
        0x7f0404e7
        0x7f0404e8
        0x7f0404e9
        0x7f0404ea
        0x7f0404eb
        0x7f0404ec
        0x7f0404ed
        0x7f0404ee
        0x7f0404ef
        0x7f0404f0
        0x7f0404f1
        0x7f0404f2
        0x7f0404f3
        0x7f0404f4
        0x7f0404f5
        0x7f0404f6
        0x7f0404f7
        0x7f0404f8
        0x7f0404f9
        0x7f0404fa
        0x7f0404fb
        0x7f0404fc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
