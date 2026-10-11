.class public final enum Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfGraphicsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

.field public static final enum GM_ADVANCED:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

.field public static final enum GM_COMPATIBLE:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    const-string v1, "GM_COMPATIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;->GM_COMPATIBLE:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    new-instance v1, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    const-string v2, "GM_ADVANCED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;->GM_ADVANCED:Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    filled-new-array {v0, v1}, [Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;
    .locals 1

    const-class v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;

    return-object v0
.end method
