.class public final synthetic Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;->values()[Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;->CENTER:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;->RIGHT:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->values()[Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->UNDERLINE:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;->values()[Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;->ITALIC:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;->values()[Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4
    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;->BOLD:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder$WhenMappings;->$EnumSwitchMapping$3:[I

    return-void
.end method
