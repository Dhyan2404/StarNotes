.class public final enum Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/record/InteractiveInfoAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Jump"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

.field public static final enum END_SHOW:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

.field public static final enum FIRST_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

.field public static final enum LAST_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

.field public static final enum LAST_SLIDE_VIEWED:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

.field public static final enum NEXT_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

.field public static final enum NONE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

.field public static final enum PREVIOUS_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->NONE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    new-instance v1, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    const-string v2, "NEXT_SLIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->NEXT_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    new-instance v2, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    const-string v3, "PREVIOUS_SLIDE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->PREVIOUS_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    new-instance v3, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    const-string v4, "FIRST_SLIDE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->FIRST_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    new-instance v4, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    const-string v5, "LAST_SLIDE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->LAST_SLIDE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    new-instance v5, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    const-string v6, "LAST_SLIDE_VIEWED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->LAST_SLIDE_VIEWED:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    new-instance v6, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    const-string v7, "END_SHOW"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->END_SHOW:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    filled-new-array/range {v0 .. v6}, [Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->$VALUES:[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->$VALUES:[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    return-object v0
.end method
