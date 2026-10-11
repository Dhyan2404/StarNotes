.class public final Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;
.super Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
.source "SourceFile"


# static fields
.field public static final BULLET_HARDCOLOR_IDX:I = 0x2

.field public static final BULLET_HARDFONT_IDX:I = 0x1

.field public static final BULLET_HARDSIZE_IDX:I = 0x4

.field public static final BULLET_IDX:I = 0x0

.field public static final NAME:Ljava/lang/String; = "paragraph_flags"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "bullet.hardcolor"

    const-string v1, "bullet.hardsize"

    const-string v2, "bullet"

    const-string v3, "bullet.hardfont"

    .line 1
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0xf

    const-string v3, "paragraph_flags"

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;

    move-result-object p0

    return-object p0
.end method
