.class public final enum Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/media/lame/LameBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VbrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;",
        "",
        "(Ljava/lang/String;I)V",
        "VBR_OFF",
        "VBR_RH",
        "VBR_MTRH",
        "VBR_ABR",
        "VBR_DEFAUT",
        "sdk-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

.field public static final enum VBR_ABR:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

.field public static final enum VBR_DEFAUT:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

.field public static final enum VBR_MTRH:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

.field public static final enum VBR_OFF:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

.field public static final enum VBR_RH:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_OFF:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    sget-object v1, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_RH:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    sget-object v2, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_MTRH:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    sget-object v3, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_ABR:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    sget-object v4, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_DEFAUT:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    const-string v1, "VBR_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_OFF:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    new-instance v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    const-string v1, "VBR_RH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_RH:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    new-instance v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    const-string v1, "VBR_MTRH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_MTRH:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    new-instance v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    const-string v1, "VBR_ABR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_ABR:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    new-instance v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    const-string v1, "VBR_DEFAUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->VBR_DEFAUT:Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    invoke-static {}, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->$values()[Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->$VALUES:[Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;->$VALUES:[Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    return-object v0
.end method
