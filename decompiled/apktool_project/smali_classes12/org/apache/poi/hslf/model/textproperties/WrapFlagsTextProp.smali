.class public Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;
.super Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
.source "SourceFile"


# static fields
.field public static final CHAR_WRAP_IDX:I = 0x0

.field public static final NAME:Ljava/lang/String; = "wrapFlags"

.field public static final OVERFLOW_IDX:I = 0x2

.field public static final WORD_WRAO_IDX:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "wordWrap"

    const-string v1, "overflow"

    const-string v2, "charWrap"

    .line 1
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0xe0000

    const-string v3, "wrapFlags"

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;-><init>(IILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;)V

    return-object v0
.end method
