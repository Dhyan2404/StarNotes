.class public abstract Lorg/apache/poi/hwpf/model/types/TAPAbstractType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final fAdjusted:Lorg/apache/poi/util/BitField;

.field private static final fAutofit:Lorg/apache/poi/util/BitField;

.field private static final fCellSpacing:Lorg/apache/poi/util/BitField;

.field private static final fFirstRow:Lorg/apache/poi/util/BitField;

.field private static final fInvalAutofit:Lorg/apache/poi/util/BitField;

.field private static final fKeepFollow:Lorg/apache/poi/util/BitField;

.field private static final fLastRow:Lorg/apache/poi/util/BitField;

.field private static final fNeverBeenAutofit:Lorg/apache/poi/util/BitField;

.field private static final fNotPageView:Lorg/apache/poi/util/BitField;

.field private static final fOrigWordTableRules:Lorg/apache/poi/util/BitField;

.field private static final fOutline:Lorg/apache/poi/util/BitField;

.field private static final fVert:Lorg/apache/poi/util/BitField;

.field private static final fWebView:Lorg/apache/poi/util/BitField;

.field private static final fWrapToWwd:Lorg/apache/poi/util/BitField;

.field private static final ftsWidth:Lorg/apache/poi/util/BitField;

.field private static final ftsWidthAfter:Lorg/apache/poi/util/BitField;

.field private static final ftsWidthBefore:Lorg/apache/poi/util/BitField;

.field private static final ftsWidthIndent:Lorg/apache/poi/util/BitField;

.field private static final grpfTap_unused:Lorg/apache/poi/util/BitField;

.field private static final pcHorz:Lorg/apache/poi/util/BitField;

.field private static final pcVert:Lorg/apache/poi/util/BitField;

.field private static final viewFlags_unused1:Lorg/apache/poi/util/BitField;

.field private static final viewFlags_unused2:Lorg/apache/poi/util/BitField;

.field private static final widthAndFitsFlags_empty1:Lorg/apache/poi/util/BitField;

.field private static final widthAndFitsFlags_empty2:Lorg/apache/poi/util/BitField;


# instance fields
.field protected field_10_wWidthIndent:S

.field protected field_11_wWidthBefore:S

.field protected field_12_wWidthAfter:S

.field protected field_13_widthAndFitsFlags:I

.field protected field_14_dxaAbs:I

.field protected field_15_dyaAbs:I

.field protected field_16_dxaFromText:I

.field protected field_17_dyaFromText:I

.field protected field_18_dxaFromTextRight:I

.field protected field_19_dyaFromTextBottom:I

.field protected field_1_istd:S

.field protected field_20_fBiDi:B

.field protected field_21_fRTL:B

.field protected field_22_fNoAllowOverlap:B

.field protected field_23_fSpare:B

.field protected field_24_grpfTap:I

.field protected field_25_internalFlags:I

.field protected field_26_itcMac:S

.field protected field_27_dxaAdjust:I

.field protected field_28_dxaWebView:I

.field protected field_29_dxaRTEWrapWidth:I

.field protected field_2_jc:S

.field protected field_30_dxaColWidthWwd:I

.field protected field_31_pctWwd:S

.field protected field_32_viewFlags:I

.field protected field_33_rgdxaCenter:[S

.field protected field_34_rgdxaCenterPrint:[S

.field protected field_35_shdTable:Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

.field protected field_36_brcBottom:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_37_brcTop:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_38_brcLeft:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_39_brcRight:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_3_dxaGapHalf:I

.field protected field_40_brcVertical:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_41_brcHorizontal:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_42_wCellPaddingDefaultTop:S

.field protected field_43_wCellPaddingDefaultLeft:S

.field protected field_44_wCellPaddingDefaultBottom:S

.field protected field_45_wCellPaddingDefaultRight:S

.field protected field_46_ftsCellPaddingDefaultTop:B

.field protected field_47_ftsCellPaddingDefaultLeft:B

.field protected field_48_ftsCellPaddingDefaultBottom:B

.field protected field_49_ftsCellPaddingDefaultRight:B

.field protected field_4_dyaRowHeight:I

.field protected field_50_wCellSpacingDefaultTop:S

.field protected field_51_wCellSpacingDefaultLeft:S

.field protected field_52_wCellSpacingDefaultBottom:S

.field protected field_53_wCellSpacingDefaultRight:S

.field protected field_54_ftsCellSpacingDefaultTop:B

.field protected field_55_ftsCellSpacingDefaultLeft:B

.field protected field_56_ftsCellSpacingDefaultBottom:B

.field protected field_57_ftsCellSpacingDefaultRight:B

.field protected field_58_wCellPaddingOuterTop:S

.field protected field_59_wCellPaddingOuterLeft:S

.field protected field_5_fCantSplit:Z

.field protected field_60_wCellPaddingOuterBottom:S

.field protected field_61_wCellPaddingOuterRight:S

.field protected field_62_ftsCellPaddingOuterTop:B

.field protected field_63_ftsCellPaddingOuterLeft:B

.field protected field_64_ftsCellPaddingOuterBottom:B

.field protected field_65_ftsCellPaddingOuterRight:B

.field protected field_66_wCellSpacingOuterTop:S

.field protected field_67_wCellSpacingOuterLeft:S

.field protected field_68_wCellSpacingOuterBottom:S

.field protected field_69_wCellSpacingOuterRight:S

.field protected field_6_fCantSplit90:Z

.field protected field_70_ftsCellSpacingOuterTop:B

.field protected field_71_ftsCellSpacingOuterLeft:B

.field protected field_72_ftsCellSpacingOuterBottom:B

.field protected field_73_ftsCellSpacingOuterRight:B

.field protected field_74_rgtc:[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

.field protected field_75_rgshd:[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

.field protected field_76_fPropRMark:B

.field protected field_77_fHasOldProps:B

.field protected field_78_cHorzBands:S

.field protected field_79_cVertBands:S

.field protected field_7_fTableHeader:Z

.field protected field_80_rgbrcInsideDefault_0:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_81_rgbrcInsideDefault_1:Lorg/apache/poi/hwpf/usermodel/BorderCode;

.field protected field_8_tlp:Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

.field protected field_9_wWidth:S


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fAutofit:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fKeepFollow:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v3, 0x1c

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidth:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v3, 0xe0

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthIndent:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v3, 0x700

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthBefore:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v3, 0x3800

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthAfter:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v3, 0x4000

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fNeverBeenAutofit:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const v3, 0x8000

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fInvalAutofit:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v3, 0x70000

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->widthAndFitsFlags_empty1:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v3, 0x80000

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fVert:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v3, 0x300000

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->pcVert:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v3, 0xc00000

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->pcHorz:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v3, -0x1000000

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->widthAndFitsFlags_empty2:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fFirstRow:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fLastRow:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fOutline:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v4, 0x8

    invoke-direct {v0, v4}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fOrigWordTableRules:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v5, 0x10

    invoke-direct {v0, v5}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fCellSpacing:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    const v6, 0xffe0

    invoke-direct {v0, v6}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->grpfTap_unused:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fWrapToWwd:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fNotPageView:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->viewFlags_unused1:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v4}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fWebView:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v5}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fAdjusted:Lorg/apache/poi/util/BitField;

    new-instance v0, Lorg/apache/poi/util/BitField;

    invoke-direct {v0, v6}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->viewFlags_unused2:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_8_tlp:Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    const/4 v0, 0x0

    new-array v1, v0, [S

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_33_rgdxaCenter:[S

    new-array v1, v0, [S

    .line 4
    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_34_rgdxaCenterPrint:[S

    .line 5
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_35_shdTable:Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    .line 6
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_36_brcBottom:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 7
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_37_brcTop:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 8
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_38_brcLeft:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 9
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_39_brcRight:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 10
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_40_brcVertical:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 11
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_41_brcHorizontal:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    new-array v1, v0, [Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    .line 12
    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_74_rgtc:[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    new-array v0, v0, [Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    .line 13
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_75_rgshd:[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    .line 14
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_80_rgbrcInsideDefault_0:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 15
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_81_rgbrcInsideDefault_1:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/model/types/TAPAbstractType;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_1_istd:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_1_istd:S

    .line 18
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_2_jc:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_2_jc:S

    .line 19
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_3_dxaGapHalf:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_3_dxaGapHalf:I

    .line 20
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_4_dyaRowHeight:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_4_dyaRowHeight:I

    .line 21
    iget-boolean v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_5_fCantSplit:Z

    iput-boolean v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_5_fCantSplit:Z

    .line 22
    iget-boolean v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_6_fCantSplit90:Z

    iput-boolean v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_6_fCantSplit90:Z

    .line 23
    iget-boolean v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_7_fTableHeader:Z

    iput-boolean v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_7_fTableHeader:Z

    .line 24
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_8_tlp:Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;->copy()Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_8_tlp:Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    .line 25
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_9_wWidth:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_9_wWidth:S

    .line 26
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_10_wWidthIndent:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_10_wWidthIndent:S

    .line 27
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_11_wWidthBefore:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_11_wWidthBefore:S

    .line 28
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_12_wWidthAfter:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_12_wWidthAfter:S

    .line 29
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    .line 30
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_14_dxaAbs:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_14_dxaAbs:I

    .line 31
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_15_dyaAbs:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_15_dyaAbs:I

    .line 32
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_16_dxaFromText:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_16_dxaFromText:I

    .line 33
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_17_dyaFromText:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_17_dyaFromText:I

    .line 34
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_18_dxaFromTextRight:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_18_dxaFromTextRight:I

    .line 35
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_19_dyaFromTextBottom:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_19_dyaFromTextBottom:I

    .line 36
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_20_fBiDi:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_20_fBiDi:B

    .line 37
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_21_fRTL:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_21_fRTL:B

    .line 38
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_22_fNoAllowOverlap:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_22_fNoAllowOverlap:B

    .line 39
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_23_fSpare:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_23_fSpare:B

    .line 40
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_24_grpfTap:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_24_grpfTap:I

    .line 41
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    .line 42
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_26_itcMac:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_26_itcMac:S

    .line 43
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_27_dxaAdjust:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_27_dxaAdjust:I

    .line 44
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_28_dxaWebView:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_28_dxaWebView:I

    .line 45
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_29_dxaRTEWrapWidth:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_29_dxaRTEWrapWidth:I

    .line 46
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_30_dxaColWidthWwd:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_30_dxaColWidthWwd:I

    .line 47
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_31_pctWwd:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_31_pctWwd:S

    .line 48
    iget v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    .line 49
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_33_rgdxaCenter:[S

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_33_rgdxaCenter:[S

    .line 50
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_34_rgdxaCenterPrint:[S

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_34_rgdxaCenterPrint:[S

    .line 51
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_35_shdTable:Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;->copy()Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_35_shdTable:Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    .line 52
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_36_brcBottom:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_36_brcBottom:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 53
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_37_brcTop:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_37_brcTop:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 54
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_38_brcLeft:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_38_brcLeft:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 55
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_39_brcRight:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_39_brcRight:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 56
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_40_brcVertical:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_40_brcVertical:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 57
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_41_brcHorizontal:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_41_brcHorizontal:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 58
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_42_wCellPaddingDefaultTop:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_42_wCellPaddingDefaultTop:S

    .line 59
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_43_wCellPaddingDefaultLeft:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_43_wCellPaddingDefaultLeft:S

    .line 60
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_44_wCellPaddingDefaultBottom:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_44_wCellPaddingDefaultBottom:S

    .line 61
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_45_wCellPaddingDefaultRight:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_45_wCellPaddingDefaultRight:S

    .line 62
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_46_ftsCellPaddingDefaultTop:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_46_ftsCellPaddingDefaultTop:B

    .line 63
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_47_ftsCellPaddingDefaultLeft:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_47_ftsCellPaddingDefaultLeft:B

    .line 64
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_48_ftsCellPaddingDefaultBottom:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_48_ftsCellPaddingDefaultBottom:B

    .line 65
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_49_ftsCellPaddingDefaultRight:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_49_ftsCellPaddingDefaultRight:B

    .line 66
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_50_wCellSpacingDefaultTop:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_50_wCellSpacingDefaultTop:S

    .line 67
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_51_wCellSpacingDefaultLeft:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_51_wCellSpacingDefaultLeft:S

    .line 68
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_52_wCellSpacingDefaultBottom:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_52_wCellSpacingDefaultBottom:S

    .line 69
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_53_wCellSpacingDefaultRight:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_53_wCellSpacingDefaultRight:S

    .line 70
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_54_ftsCellSpacingDefaultTop:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_54_ftsCellSpacingDefaultTop:B

    .line 71
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_55_ftsCellSpacingDefaultLeft:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_55_ftsCellSpacingDefaultLeft:B

    .line 72
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_56_ftsCellSpacingDefaultBottom:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_56_ftsCellSpacingDefaultBottom:B

    .line 73
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_57_ftsCellSpacingDefaultRight:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_57_ftsCellSpacingDefaultRight:B

    .line 74
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_58_wCellPaddingOuterTop:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_58_wCellPaddingOuterTop:S

    .line 75
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_59_wCellPaddingOuterLeft:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_59_wCellPaddingOuterLeft:S

    .line 76
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_60_wCellPaddingOuterBottom:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_60_wCellPaddingOuterBottom:S

    .line 77
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_61_wCellPaddingOuterRight:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_61_wCellPaddingOuterRight:S

    .line 78
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_62_ftsCellPaddingOuterTop:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_62_ftsCellPaddingOuterTop:B

    .line 79
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_63_ftsCellPaddingOuterLeft:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_63_ftsCellPaddingOuterLeft:B

    .line 80
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_64_ftsCellPaddingOuterBottom:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_64_ftsCellPaddingOuterBottom:B

    .line 81
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_65_ftsCellPaddingOuterRight:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_65_ftsCellPaddingOuterRight:B

    .line 82
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_66_wCellSpacingOuterTop:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_66_wCellSpacingOuterTop:S

    .line 83
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_67_wCellSpacingOuterLeft:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_67_wCellSpacingOuterLeft:S

    .line 84
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_68_wCellSpacingOuterBottom:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_68_wCellSpacingOuterBottom:S

    .line 85
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_69_wCellSpacingOuterRight:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_69_wCellSpacingOuterRight:S

    .line 86
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_70_ftsCellSpacingOuterTop:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_70_ftsCellSpacingOuterTop:B

    .line 87
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_71_ftsCellSpacingOuterLeft:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_71_ftsCellSpacingOuterLeft:B

    .line 88
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_72_ftsCellSpacingOuterBottom:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_72_ftsCellSpacingOuterBottom:B

    .line 89
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_73_ftsCellSpacingOuterRight:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_73_ftsCellSpacingOuterRight:B

    .line 90
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_74_rgtc:[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_a

    .line 91
    :cond_a
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/v6n;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/v6n;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/w6n;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/w6n;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    :goto_a
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_74_rgtc:[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    .line 92
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_75_rgshd:[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_b

    .line 93
    :cond_b
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/x6n;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/x6n;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/y6n;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/y6n;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    :goto_b
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_75_rgshd:[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    .line 94
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_76_fPropRMark:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_76_fPropRMark:B

    .line 95
    iget-byte v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_77_fHasOldProps:B

    iput-byte v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_77_fHasOldProps:B

    .line 96
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_78_cHorzBands:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_78_cHorzBands:S

    .line 97
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_79_cVertBands:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_79_cVertBands:S

    .line 98
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_80_rgbrcInsideDefault_0:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez v0, :cond_c

    move-object v0, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_80_rgbrcInsideDefault_0:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 99
    iget-object p1, p1, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_81_rgbrcInsideDefault_1:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    if-nez p1, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->copy()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v1

    :goto_d
    iput-object v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_81_rgbrcInsideDefault_1:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public static synthetic a(I)[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->lambda$new$0(I)[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->lambda$new$1(I)[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    return-object p0
.end method

.method private static synthetic lambda$new$1(I)[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    return-object p0
.end method


# virtual methods
.method public getBrcBottom()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_36_brcBottom:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getBrcHorizontal()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_41_brcHorizontal:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getBrcLeft()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_38_brcLeft:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getBrcRight()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_39_brcRight:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getBrcTop()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_37_brcTop:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getBrcVertical()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_40_brcVertical:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getCHorzBands()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_78_cHorzBands:S

    return p0
.end method

.method public getCVertBands()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_79_cVertBands:S

    return p0
.end method

.method public getDxaAbs()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_14_dxaAbs:I

    return p0
.end method

.method public getDxaAdjust()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_27_dxaAdjust:I

    return p0
.end method

.method public getDxaColWidthWwd()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_30_dxaColWidthWwd:I

    return p0
.end method

.method public getDxaFromText()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_16_dxaFromText:I

    return p0
.end method

.method public getDxaFromTextRight()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_18_dxaFromTextRight:I

    return p0
.end method

.method public getDxaGapHalf()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_3_dxaGapHalf:I

    return p0
.end method

.method public getDxaRTEWrapWidth()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_29_dxaRTEWrapWidth:I

    return p0
.end method

.method public getDxaWebView()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_28_dxaWebView:I

    return p0
.end method

.method public getDyaAbs()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_15_dyaAbs:I

    return p0
.end method

.method public getDyaFromText()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_17_dyaFromText:I

    return p0
.end method

.method public getDyaFromTextBottom()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_19_dyaFromTextBottom:I

    return p0
.end method

.method public getDyaRowHeight()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_4_dyaRowHeight:I

    return p0
.end method

.method public getFBiDi()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_20_fBiDi:B

    return p0
.end method

.method public getFCantSplit()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-boolean p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_5_fCantSplit:Z

    return p0
.end method

.method public getFCantSplit90()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-boolean p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_6_fCantSplit90:Z

    return p0
.end method

.method public getFHasOldProps()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_77_fHasOldProps:B

    return p0
.end method

.method public getFNoAllowOverlap()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_22_fNoAllowOverlap:B

    return p0
.end method

.method public getFPropRMark()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_76_fPropRMark:B

    return p0
.end method

.method public getFRTL()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_21_fRTL:B

    return p0
.end method

.method public getFSpare()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_23_fSpare:B

    return p0
.end method

.method public getFTableHeader()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-boolean p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_7_fTableHeader:Z

    return p0
.end method

.method public getFtsCellPaddingDefaultBottom()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_48_ftsCellPaddingDefaultBottom:B

    return p0
.end method

.method public getFtsCellPaddingDefaultLeft()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_47_ftsCellPaddingDefaultLeft:B

    return p0
.end method

.method public getFtsCellPaddingDefaultRight()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_49_ftsCellPaddingDefaultRight:B

    return p0
.end method

.method public getFtsCellPaddingDefaultTop()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_46_ftsCellPaddingDefaultTop:B

    return p0
.end method

.method public getFtsCellPaddingOuterBottom()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_64_ftsCellPaddingOuterBottom:B

    return p0
.end method

.method public getFtsCellPaddingOuterLeft()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_63_ftsCellPaddingOuterLeft:B

    return p0
.end method

.method public getFtsCellPaddingOuterRight()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_65_ftsCellPaddingOuterRight:B

    return p0
.end method

.method public getFtsCellPaddingOuterTop()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_62_ftsCellPaddingOuterTop:B

    return p0
.end method

.method public getFtsCellSpacingDefaultBottom()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_56_ftsCellSpacingDefaultBottom:B

    return p0
.end method

.method public getFtsCellSpacingDefaultLeft()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_55_ftsCellSpacingDefaultLeft:B

    return p0
.end method

.method public getFtsCellSpacingDefaultRight()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_57_ftsCellSpacingDefaultRight:B

    return p0
.end method

.method public getFtsCellSpacingDefaultTop()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_54_ftsCellSpacingDefaultTop:B

    return p0
.end method

.method public getFtsCellSpacingOuterBottom()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_72_ftsCellSpacingOuterBottom:B

    return p0
.end method

.method public getFtsCellSpacingOuterLeft()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_71_ftsCellSpacingOuterLeft:B

    return p0
.end method

.method public getFtsCellSpacingOuterRight()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_73_ftsCellSpacingOuterRight:B

    return p0
.end method

.method public getFtsCellSpacingOuterTop()B
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_70_ftsCellSpacingOuterTop:B

    return p0
.end method

.method public getFtsWidth()B
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidth:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getFtsWidthAfter()B
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthAfter:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getFtsWidthBefore()B
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthBefore:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getFtsWidthIndent()B
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthIndent:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getGrpfTap()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_24_grpfTap:I

    return p0
.end method

.method public getGrpfTap_unused()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->grpfTap_unused:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getInternalFlags()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return p0
.end method

.method public getIstd()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_1_istd:S

    return p0
.end method

.method public getItcMac()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_26_itcMac:S

    return p0
.end method

.method public getJc()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_2_jc:S

    return p0
.end method

.method public getPcHorz()B
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->pcHorz:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getPcVert()B
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->pcVert:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getPctWwd()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_31_pctWwd:S

    return p0
.end method

.method public getRgbrcInsideDefault_0()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_80_rgbrcInsideDefault_0:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getRgbrcInsideDefault_1()Lorg/apache/poi/hwpf/usermodel/BorderCode;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_81_rgbrcInsideDefault_1:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-object p0
.end method

.method public getRgdxaCenter()[S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_33_rgdxaCenter:[S

    return-object p0
.end method

.method public getRgdxaCenterPrint()[S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_34_rgdxaCenterPrint:[S

    return-object p0
.end method

.method public getRgshd()[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_75_rgshd:[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    return-object p0
.end method

.method public getRgtc()[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_74_rgtc:[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    return-object p0
.end method

.method public getShdTable()Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_35_shdTable:Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    return-object p0
.end method

.method public getTlp()Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_8_tlp:Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    return-object p0
.end method

.method public getViewFlags()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return p0
.end method

.method public getViewFlags_unused2()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->viewFlags_unused2:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getWCellPaddingDefaultBottom()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_44_wCellPaddingDefaultBottom:S

    return p0
.end method

.method public getWCellPaddingDefaultLeft()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_43_wCellPaddingDefaultLeft:S

    return p0
.end method

.method public getWCellPaddingDefaultRight()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_45_wCellPaddingDefaultRight:S

    return p0
.end method

.method public getWCellPaddingDefaultTop()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_42_wCellPaddingDefaultTop:S

    return p0
.end method

.method public getWCellPaddingOuterBottom()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_60_wCellPaddingOuterBottom:S

    return p0
.end method

.method public getWCellPaddingOuterLeft()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_59_wCellPaddingOuterLeft:S

    return p0
.end method

.method public getWCellPaddingOuterRight()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_61_wCellPaddingOuterRight:S

    return p0
.end method

.method public getWCellPaddingOuterTop()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_58_wCellPaddingOuterTop:S

    return p0
.end method

.method public getWCellSpacingDefaultBottom()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_52_wCellSpacingDefaultBottom:S

    return p0
.end method

.method public getWCellSpacingDefaultLeft()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_51_wCellSpacingDefaultLeft:S

    return p0
.end method

.method public getWCellSpacingDefaultRight()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_53_wCellSpacingDefaultRight:S

    return p0
.end method

.method public getWCellSpacingDefaultTop()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_50_wCellSpacingDefaultTop:S

    return p0
.end method

.method public getWCellSpacingOuterBottom()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_68_wCellSpacingOuterBottom:S

    return p0
.end method

.method public getWCellSpacingOuterLeft()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_67_wCellSpacingOuterLeft:S

    return p0
.end method

.method public getWCellSpacingOuterRight()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_69_wCellSpacingOuterRight:S

    return p0
.end method

.method public getWCellSpacingOuterTop()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_66_wCellSpacingOuterTop:S

    return p0
.end method

.method public getWWidth()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_9_wWidth:S

    return p0
.end method

.method public getWWidthAfter()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_12_wWidthAfter:S

    return p0
.end method

.method public getWWidthBefore()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_11_wWidthBefore:S

    return p0
.end method

.method public getWWidthIndent()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_10_wWidthIndent:S

    return p0
.end method

.method public getWidthAndFitsFlags()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return p0
.end method

.method public getWidthAndFitsFlags_empty1()B
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->widthAndFitsFlags_empty1:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getWidthAndFitsFlags_empty2()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->widthAndFitsFlags_empty2:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public isFAdjusted()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fAdjusted:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFAutofit()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fAutofit:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFCellSpacing()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fCellSpacing:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFFirstRow()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fFirstRow:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFInvalAutofit()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fInvalAutofit:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFKeepFollow()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fKeepFollow:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFLastRow()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fLastRow:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFNeverBeenAutofit()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fNeverBeenAutofit:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFNotPageView()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fNotPageView:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFOrigWordTableRules()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fOrigWordTableRules:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFOutline()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fOutline:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFVert()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fVert:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFWebView()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fWebView:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isFWrapToWwd()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fWrapToWwd:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isViewFlags_unused1()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->viewFlags_unused1:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public setBrcBottom(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_36_brcBottom:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setBrcHorizontal(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_41_brcHorizontal:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setBrcLeft(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_38_brcLeft:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setBrcRight(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_39_brcRight:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setBrcTop(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_37_brcTop:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setBrcVertical(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_40_brcVertical:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setCHorzBands(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_78_cHorzBands:S

    return-void
.end method

.method public setCVertBands(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_79_cVertBands:S

    return-void
.end method

.method public setDxaAbs(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_14_dxaAbs:I

    return-void
.end method

.method public setDxaAdjust(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_27_dxaAdjust:I

    return-void
.end method

.method public setDxaColWidthWwd(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_30_dxaColWidthWwd:I

    return-void
.end method

.method public setDxaFromText(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_16_dxaFromText:I

    return-void
.end method

.method public setDxaFromTextRight(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_18_dxaFromTextRight:I

    return-void
.end method

.method public setDxaGapHalf(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_3_dxaGapHalf:I

    return-void
.end method

.method public setDxaRTEWrapWidth(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_29_dxaRTEWrapWidth:I

    return-void
.end method

.method public setDxaWebView(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_28_dxaWebView:I

    return-void
.end method

.method public setDyaAbs(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_15_dyaAbs:I

    return-void
.end method

.method public setDyaFromText(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_17_dyaFromText:I

    return-void
.end method

.method public setDyaFromTextBottom(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_19_dyaFromTextBottom:I

    return-void
.end method

.method public setDyaRowHeight(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_4_dyaRowHeight:I

    return-void
.end method

.method public setFAdjusted(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fAdjusted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return-void
.end method

.method public setFAutofit(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fAutofit:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFBiDi(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_20_fBiDi:B

    return-void
.end method

.method public setFCantSplit(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-boolean p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_5_fCantSplit:Z

    return-void
.end method

.method public setFCantSplit90(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-boolean p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_6_fCantSplit90:Z

    return-void
.end method

.method public setFCellSpacing(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fCellSpacing:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return-void
.end method

.method public setFFirstRow(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fFirstRow:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return-void
.end method

.method public setFHasOldProps(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_77_fHasOldProps:B

    return-void
.end method

.method public setFInvalAutofit(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fInvalAutofit:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFKeepFollow(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fKeepFollow:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFLastRow(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fLastRow:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return-void
.end method

.method public setFNeverBeenAutofit(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fNeverBeenAutofit:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFNoAllowOverlap(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_22_fNoAllowOverlap:B

    return-void
.end method

.method public setFNotPageView(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fNotPageView:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return-void
.end method

.method public setFOrigWordTableRules(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fOrigWordTableRules:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return-void
.end method

.method public setFOutline(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fOutline:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return-void
.end method

.method public setFPropRMark(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_76_fPropRMark:B

    return-void
.end method

.method public setFRTL(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_21_fRTL:B

    return-void
.end method

.method public setFSpare(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_23_fSpare:B

    return-void
.end method

.method public setFTableHeader(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-boolean p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_7_fTableHeader:Z

    return-void
.end method

.method public setFVert(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fVert:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFWebView(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fWebView:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return-void
.end method

.method public setFWrapToWwd(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->fWrapToWwd:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return-void
.end method

.method public setFtsCellPaddingDefaultBottom(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_48_ftsCellPaddingDefaultBottom:B

    return-void
.end method

.method public setFtsCellPaddingDefaultLeft(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_47_ftsCellPaddingDefaultLeft:B

    return-void
.end method

.method public setFtsCellPaddingDefaultRight(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_49_ftsCellPaddingDefaultRight:B

    return-void
.end method

.method public setFtsCellPaddingDefaultTop(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_46_ftsCellPaddingDefaultTop:B

    return-void
.end method

.method public setFtsCellPaddingOuterBottom(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_64_ftsCellPaddingOuterBottom:B

    return-void
.end method

.method public setFtsCellPaddingOuterLeft(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_63_ftsCellPaddingOuterLeft:B

    return-void
.end method

.method public setFtsCellPaddingOuterRight(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_65_ftsCellPaddingOuterRight:B

    return-void
.end method

.method public setFtsCellPaddingOuterTop(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_62_ftsCellPaddingOuterTop:B

    return-void
.end method

.method public setFtsCellSpacingDefaultBottom(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_56_ftsCellSpacingDefaultBottom:B

    return-void
.end method

.method public setFtsCellSpacingDefaultLeft(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_55_ftsCellSpacingDefaultLeft:B

    return-void
.end method

.method public setFtsCellSpacingDefaultRight(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_57_ftsCellSpacingDefaultRight:B

    return-void
.end method

.method public setFtsCellSpacingDefaultTop(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_54_ftsCellSpacingDefaultTop:B

    return-void
.end method

.method public setFtsCellSpacingOuterBottom(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_72_ftsCellSpacingOuterBottom:B

    return-void
.end method

.method public setFtsCellSpacingOuterLeft(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_71_ftsCellSpacingOuterLeft:B

    return-void
.end method

.method public setFtsCellSpacingOuterRight(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_73_ftsCellSpacingOuterRight:B

    return-void
.end method

.method public setFtsCellSpacingOuterTop(B)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_70_ftsCellSpacingOuterTop:B

    return-void
.end method

.method public setFtsWidth(B)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidth:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFtsWidthAfter(B)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthAfter:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFtsWidthBefore(B)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthBefore:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setFtsWidthIndent(B)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->ftsWidthIndent:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setGrpfTap(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_24_grpfTap:I

    return-void
.end method

.method public setGrpfTap_unused(S)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->grpfTap_unused:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return-void
.end method

.method public setInternalFlags(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_25_internalFlags:I

    return-void
.end method

.method public setIstd(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_1_istd:S

    return-void
.end method

.method public setItcMac(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_26_itcMac:S

    return-void
.end method

.method public setJc(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_2_jc:S

    return-void
.end method

.method public setPcHorz(B)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->pcHorz:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setPcVert(B)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->pcVert:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setPctWwd(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_31_pctWwd:S

    return-void
.end method

.method public setRgbrcInsideDefault_0(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_80_rgbrcInsideDefault_0:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setRgbrcInsideDefault_1(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_81_rgbrcInsideDefault_1:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    return-void
.end method

.method public setRgdxaCenter([S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_33_rgdxaCenter:[S

    return-void
.end method

.method public setRgdxaCenterPrint([S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_34_rgdxaCenterPrint:[S

    return-void
.end method

.method public setRgshd([Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_75_rgshd:[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    return-void
.end method

.method public setRgtc([Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_74_rgtc:[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    return-void
.end method

.method public setShdTable(Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_35_shdTable:Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    return-void
.end method

.method public setTlp(Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_8_tlp:Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    return-void
.end method

.method public setViewFlags(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return-void
.end method

.method public setViewFlags_unused1(Z)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->viewFlags_unused1:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return-void
.end method

.method public setViewFlags_unused2(S)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->viewFlags_unused2:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_32_viewFlags:I

    return-void
.end method

.method public setWCellPaddingDefaultBottom(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_44_wCellPaddingDefaultBottom:S

    return-void
.end method

.method public setWCellPaddingDefaultLeft(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_43_wCellPaddingDefaultLeft:S

    return-void
.end method

.method public setWCellPaddingDefaultRight(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_45_wCellPaddingDefaultRight:S

    return-void
.end method

.method public setWCellPaddingDefaultTop(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_42_wCellPaddingDefaultTop:S

    return-void
.end method

.method public setWCellPaddingOuterBottom(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_60_wCellPaddingOuterBottom:S

    return-void
.end method

.method public setWCellPaddingOuterLeft(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_59_wCellPaddingOuterLeft:S

    return-void
.end method

.method public setWCellPaddingOuterRight(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_61_wCellPaddingOuterRight:S

    return-void
.end method

.method public setWCellPaddingOuterTop(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_58_wCellPaddingOuterTop:S

    return-void
.end method

.method public setWCellSpacingDefaultBottom(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_52_wCellSpacingDefaultBottom:S

    return-void
.end method

.method public setWCellSpacingDefaultLeft(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_51_wCellSpacingDefaultLeft:S

    return-void
.end method

.method public setWCellSpacingDefaultRight(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_53_wCellSpacingDefaultRight:S

    return-void
.end method

.method public setWCellSpacingDefaultTop(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_50_wCellSpacingDefaultTop:S

    return-void
.end method

.method public setWCellSpacingOuterBottom(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_68_wCellSpacingOuterBottom:S

    return-void
.end method

.method public setWCellSpacingOuterLeft(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_67_wCellSpacingOuterLeft:S

    return-void
.end method

.method public setWCellSpacingOuterRight(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_69_wCellSpacingOuterRight:S

    return-void
.end method

.method public setWCellSpacingOuterTop(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_66_wCellSpacingOuterTop:S

    return-void
.end method

.method public setWWidth(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_9_wWidth:S

    return-void
.end method

.method public setWWidthAfter(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_12_wWidthAfter:S

    return-void
.end method

.method public setWWidthBefore(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_11_wWidthBefore:S

    return-void
.end method

.method public setWWidthIndent(S)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-short p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_10_wWidthIndent:S

    return-void
.end method

.method public setWidthAndFitsFlags(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setWidthAndFitsFlags_empty1(B)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->widthAndFitsFlags_empty1:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public setWidthAndFitsFlags_empty2(S)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->widthAndFitsFlags_empty2:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->field_13_widthAndFitsFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TAP]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    .istd                 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getIstd()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .jc                   = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getJc()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .dxaGapHalf           = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaGapHalf()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .dyaRowHeight         = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDyaRowHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .fCantSplit           = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFCantSplit()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .fCantSplit90         = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFCantSplit90()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .fTableHeader         = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFTableHeader()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .tlp                  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getTlp()Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wWidth               = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWWidth()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wWidthIndent         = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWWidthIndent()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wWidthBefore         = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWWidthBefore()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wWidthAfter          = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWWidthAfter()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .widthAndFitsFlags    = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWidthAndFitsFlags()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "         .fAutofit                 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFAutofit()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fKeepFollow              = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFKeepFollow()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .ftsWidth                 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsWidth()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .ftsWidthIndent           = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsWidthIndent()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .ftsWidthBefore           = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsWidthBefore()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .ftsWidthAfter            = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsWidthAfter()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fNeverBeenAutofit        = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFNeverBeenAutofit()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fInvalAutofit            = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFInvalAutofit()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .widthAndFitsFlags_empty1     = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWidthAndFitsFlags_empty1()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fVert                    = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFVert()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .pcVert                   = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getPcVert()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .pcHorz                   = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getPcHorz()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .widthAndFitsFlags_empty2     = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWidthAndFitsFlags_empty2()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "    .dxaAbs               = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaAbs()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dyaAbs               = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDyaAbs()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dxaFromText          = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaFromText()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dyaFromText          = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDyaFromText()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dxaFromTextRight     = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaFromTextRight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dyaFromTextBottom    = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDyaFromTextBottom()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .fBiDi                = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFBiDi()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .fRTL                 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFRTL()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .fNoAllowOverlap      = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFNoAllowOverlap()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .fSpare               = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFSpare()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .grpfTap              = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getGrpfTap()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .internalFlags        = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getInternalFlags()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "         .fFirstRow                = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFFirstRow()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fLastRow                 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFLastRow()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fOutline                 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFOutline()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fOrigWordTableRules      = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFOrigWordTableRules()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fCellSpacing             = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFCellSpacing()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .grpfTap_unused           = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getGrpfTap_unused()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "    .itcMac               = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getItcMac()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dxaAdjust            = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaAdjust()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dxaWebView           = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaWebView()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dxaRTEWrapWidth      = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaRTEWrapWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .dxaColWidthWwd       = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getDxaColWidthWwd()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .pctWwd               = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getPctWwd()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    .viewFlags            = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getViewFlags()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "         .fWrapToWwd               = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFWrapToWwd()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fNotPageView             = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFNotPageView()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .viewFlags_unused1        = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isViewFlags_unused1()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fWebView                 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFWebView()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .fAdjusted                = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->isFAdjusted()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "         .viewFlags_unused2        = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getViewFlags_unused2()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "    .rgdxaCenter          = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getRgdxaCenter()[S

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .rgdxaCenterPrint     = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getRgdxaCenterPrint()[S

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .shdTable             = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getShdTable()Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .brcBottom            = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getBrcBottom()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .brcTop               = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getBrcTop()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .brcLeft              = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getBrcLeft()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .brcRight             = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getBrcRight()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .brcVertical          = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getBrcVertical()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .brcHorizontal        = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getBrcHorizontal()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingDefaultTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingDefaultTop()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingDefaultLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingDefaultLeft()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingDefaultBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingDefaultBottom()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingDefaultRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingDefaultRight()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingDefaultTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingDefaultTop()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingDefaultLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingDefaultLeft()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingDefaultBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingDefaultBottom()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingDefaultRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingDefaultRight()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingDefaultTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingDefaultTop()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingDefaultLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingDefaultLeft()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingDefaultBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingDefaultBottom()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingDefaultRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingDefaultRight()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingDefaultTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingDefaultTop()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingDefaultLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingDefaultLeft()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingDefaultBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingDefaultBottom()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingDefaultRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingDefaultRight()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingOuterTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingOuterTop()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingOuterLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingOuterLeft()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingOuterBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingOuterBottom()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellPaddingOuterRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellPaddingOuterRight()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingOuterTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingOuterTop()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingOuterLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingOuterLeft()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingOuterBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingOuterBottom()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellPaddingOuterRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellPaddingOuterRight()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingOuterTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingOuterTop()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingOuterLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingOuterLeft()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingOuterBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingOuterBottom()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .wCellSpacingOuterRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getWCellSpacingOuterRight()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingOuterTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingOuterTop()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingOuterLeft = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingOuterLeft()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingOuterBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingOuterBottom()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .ftsCellSpacingOuterRight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFtsCellSpacingOuterRight()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .rgtc                 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getRgtc()[Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .rgshd                = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getRgshd()[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .fPropRMark           = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFPropRMark()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .fHasOldProps         = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getFHasOldProps()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .cHorzBands           = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getCHorzBands()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .cVertBands           = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getCVertBands()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .rgbrcInsideDefault_0 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getRgbrcInsideDefault_0()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    .rgbrcInsideDefault_1 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getRgbrcInsideDefault_1()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[/TAP]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
