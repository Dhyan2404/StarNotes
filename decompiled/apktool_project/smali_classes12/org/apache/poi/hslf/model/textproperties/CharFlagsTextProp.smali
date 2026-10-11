.class public Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;
.super Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
.source "SourceFile"


# static fields
.field public static final BOLD_IDX:I = 0x0

.field public static final ENABLE_NUMBERING_1_IDX:I = 0xb

.field public static final ENABLE_NUMBERING_2_IDX:I = 0xc

.field public static final ITALIC_IDX:I = 0x1

.field public static final NAME:Ljava/lang/String; = "char_flags"

.field public static final RELIEF_IDX:I = 0x9

.field public static final RESET_NUMBERING_IDX:I = 0xa

.field public static final SHADOW_IDX:I = 0x4

.field public static final STRIKETHROUGH_IDX:I = 0x8

.field public static final UNDERLINE_IDX:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 16

    const-string v0, "bold"

    const-string v1, "italic"

    const-string v2, "underline"

    const-string v3, "unused1"

    const-string v4, "shadow"

    const-string v5, "fehint"

    const-string v6, "unused2"

    const-string v7, "kumi"

    const-string v8, "strikethrough"

    const-string v9, "emboss"

    const-string v10, "pp9rt_1"

    const-string v11, "pp9rt_2"

    const-string v12, "pp9rt_3"

    const-string v13, "pp9rt_4"

    const-string v14, "unused4_1"

    const-string v15, "unused4_2"

    .line 1
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0xffff

    const-string v3, "char_flags"

    move-object/from16 v4, p0

    invoke-direct {v4, v1, v2, v3, v0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;

    move-result-object p0

    return-object p0
.end method
