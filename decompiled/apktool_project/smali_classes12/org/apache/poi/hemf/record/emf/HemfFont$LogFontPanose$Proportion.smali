.class final enum Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Proportion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_ANY:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_NO_FIT:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_CONDENSED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_EVEN_WIDTH:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_EXPANDED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_MODERN:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_MONOSPACED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_OLD_STYLE:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_VERY_CONDENSED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

.field public static final enum PAN_PROP_VERY_EXPANDED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v1, "PAN_ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_ANY:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v1, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v2, "PAN_NO_FIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_NO_FIT:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v3, "PAN_PROP_OLD_STYLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_OLD_STYLE:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v3, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v4, "PAN_PROP_MODERN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_MODERN:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v4, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v5, "PAN_PROP_EVEN_WIDTH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_EVEN_WIDTH:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v5, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v6, "PAN_PROP_EXPANDED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_EXPANDED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v6, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v7, "PAN_PROP_CONDENSED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_CONDENSED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v7, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v8, "PAN_PROP_VERY_EXPANDED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_VERY_EXPANDED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v8, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v9, "PAN_PROP_VERY_CONDENSED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_VERY_CONDENSED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    new-instance v9, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    const-string v10, "PAN_PROP_MONOSPACED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->PAN_PROP_MONOSPACED:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;
    .locals 1

    const-class v0, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    return-object v0
.end method
