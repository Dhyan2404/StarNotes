.class public final enum Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/record/DocumentAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlideSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

.field public static final enum A4_SIZED_PAPER:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

.field public static final enum BANNER:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

.field public static final enum CUSTOM:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

.field public static final enum LETTER_SIZED_PAPER:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

.field public static final enum ON_35MM:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

.field public static final enum ON_SCREEN:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

.field public static final enum OVERHEAD:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    const-string v1, "ON_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->ON_SCREEN:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    new-instance v1, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    const-string v2, "LETTER_SIZED_PAPER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->LETTER_SIZED_PAPER:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    new-instance v2, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    const-string v3, "A4_SIZED_PAPER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->A4_SIZED_PAPER:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    new-instance v3, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    const-string v4, "ON_35MM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->ON_35MM:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    new-instance v4, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    const-string v5, "OVERHEAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->OVERHEAD:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    new-instance v5, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    const-string v6, "BANNER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->BANNER:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    new-instance v6, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    const-string v7, "CUSTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->CUSTOM:Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    filled-new-array/range {v0 .. v6}, [Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->$VALUES:[Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->$VALUES:[Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    return-object v0
.end method
